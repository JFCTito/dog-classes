<template>
  <q-page>
    <div class="row">
      <div class="col-12 col-md-4 col-lg-4 q-pa-xl">
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
            v-model="form.color.value"
            :error="form.color.error"
            :error-message="form.color.msg">
            <template v-slot:prepend>
              <q-icon name="palette"></q-icon>
            </template>
          </q-input>
          <q-file
            class="q-mt-sm"
            v-model="form.img.value"
            outlined
            label="Unicamente imagenes"
            accept=".jpg, image/*"
            @update:model-value="handleImageUpload"
          >
          <template v-slot:prepend>
            <q-icon name="attach_file" />
            <q-icon v-if="form.img.value !== ''" name="close" @click.stop.prevent="form.img.value = ''" class="cursor-pointer" />
          </template>
          </q-file>
          <div class="q-img-container">
          <q-img
            v-if="form.img.value !== ''"
            :src="form.img.value"
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
                  <q-img :src="dog.img" spinner-color="white" height="140px" style="max-width: 100%" />
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
import { ref } from 'vue'
import dogsData from '../assets/dogs.json'

const form = ref({
  breed: {
    value: '',
    required: true
  },
  size: {
    value: '',
    required: true
  },
  color: {
    value: '',
    required: true
  },
  img: {
    value: '',
    required: true
  }
})

const submitForm = () => {
  const formData = {
    breed: form.value.breed.value,
    size: form.value.size.value,
    color: form.value.color.value,
    img: form.value.img.value ? form.value.img.value.name : ''
  }

  console.log('Informacion ingresada: ', formData)
}

const handleImageUpload = (event) => {
  console.log('evento')
  console.log(event)
}

const dogs = ref(dogsData.dogs)
</script>

<style scoped>
  .logo {
    width: 50%;
  }
  .logo-display {
    width: 70%;
    margin-top: 10px;
  }

  .q-img-container img[src=''] {
  display: none;
  }

</style>
