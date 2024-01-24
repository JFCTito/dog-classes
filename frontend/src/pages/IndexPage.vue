<template>
  <q-page>
    <div class="row justify-center">
      <div class="col-12 col-sm-6 col-md-4 col-lg-4 q-pa-xl form-section">
        <div class="text-center">
          <q-img
            class="logo"
            src="~src/assets/logo.png"/>
        </div>
        <div class="text-h4 text-bold q-mt-lg">Perros</div>
        <div class="text-grey-7">Ingrese una raza en el formulario.</div>
        <div class="column">
          <q-input
            outlined
            label="Nombre de raza"
            v-model="form.breed.value"
            :error="form.breed.error"
            :error-message="form.breed.msg">
            <template v-slot:prepend>
              <q-icon name="pets"></q-icon>
            </template>
          </q-input>
          <q-input
            class="q-mt-sm"
            outlined
            label="Tamaño (Peq/Med/Gde)"
            v-model="form.size.value"
            :error="form.size.error"
            :error-message="form.size.msg">
            <template v-slot:prepend>
              <q-icon name="straighten"></q-icon>
            </template>
          </q-input>
          <q-input
            class="q-mt-sm"
            outlined
            label="Color de pelaje"
            v-model="form.hairColor.value"
            :error="form.hairColor.error"
            :error-message="form.hairColor.msg">
            <template v-slot:prepend>
              <q-icon name="palette"></q-icon>
            </template>
          </q-input>
          <q-file
            class="q-mt-sm"
            v-model="form.photo"
            outlined
            label="Unicamente imagenes"
            accept=".jpg, image/*"
            @update:model-value="handleImageUpload"
          >
          <template v-slot:prepend>
            <q-icon name="attach_file" />
            <q-icon v-if="form.photo !== ''" name="close" @click.stop.prevent="form.photo = ''" class="cursor-pointer" />
          </template>
          </q-file>
          <div class="q-photo-container">
          <q-img
            v-if="form.photo !== ''"
            :src="form.photoUrl"
            spinner-color="white"
            height="140px"
            style="max-width: 150px; margin: 0 auto; display: block"
          />
          </div>
          <q-btn
            class="q-mt-sm"
            color="indigo"
            @click="submitForm">
            Ingresar
            </q-btn>
        </div>
      </div>
      <div class="q-pa-md example-row-equal-width col-lg-8">
        <div class="row">
              <q-card class="q-mt-sm col-6 col-md-4 col-lg-3" v-for="dog in dogs" :key="dog.breed">
                <q-card-section>
                  <q-img :src="dog.photo" spinner-color="white" style="max-width: 100%" :fit="contain" />
                </q-card-section>
                <q-card-section>
                  <q-card-section>
                    <p>Breed: {{ dog.breed }}</p>
                    <p>Size: {{ dog.size }}</p>
                    <p>Color: {{ dog.color }}</p>
                  </q-card-section>
                </q-card-section>
              </q-card>
        </div>
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { DogService } from '../services/DogService'

const form = ref({
  breed: {
    value: '',
    required: true
  },
  size: {
    value: '',
    required: true
  },
  hairColor: {
    value: '',
    required: true
  },
  photo: '',
  photoUrl: ''
})

const dogs = ref([])

const fetchDogs = async () => {
  try {
    const response = await DogService.getAllDogs()
    dogs.value = response.data
  } catch (error) {
    console.error('Error fetching dogs:', error)
  }
}

onMounted(fetchDogs)

const submitForm = async () => {
  const formData = new FormData()
  formData.append('breed', form.value.breed.value)
  formData.append('size', form.value.size.value)
  formData.append('hairColor', form.value.hairColor.value)
  formData.append('photo', form.value.photo)

  console.log('Informacion ingresada: ', formData)

  try {
    const response = await DogService.createDog(formData)
    console.log('Dog created:', response)
    form.value.breed.value = ''
    form.value.size.value = ''
    form.value.hairColor.value = ''
    form.value.photo = ''
    form.value.photoUrl = ''
    fetchDogs()
  } catch (error) {
    console.error('Error creating dog:', error)
  }
}

const handleImageUpload = (event) => {
  form.value.photo = event
  if (event instanceof File) {
    const reader = new FileReader()
    reader.onload = () => {
      form.value.photoUrl = reader.result
    }
    reader.readAsDataURL(event)
  }
}

</script>

<style scoped>
  .logo {
    width: 50%;
  }
  .logo-display {
    width: 70%;
    margin-top: 10px;
  }
  .q-photo-container img[src=''] {
  display: none;
  }

  .form-section {
    height: 100vh;
  }
</style>
