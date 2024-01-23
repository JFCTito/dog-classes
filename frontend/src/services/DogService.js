import axios from 'axios'

const BASE_URL = 'http://127.0.0.1:8000/api/v1/dogs'

const DogService = {
  getAllDogs: async () => {
    try {
      const response = await axios.get(`${BASE_URL}/all`)
      return response.data
    } catch (error) {
      console.error('Error getting all dogs:', error)
      throw error
    }
  },

  getDogById: async (id) => {
    try {
      const response = await axios.get(`${BASE_URL}/id/${id}`)
      return response.data
    } catch (error) {
      console.error('Error getting dog by ID:', error)
      throw error
    }
  },

  // Add other dog-related service functions here

  // For example:
  createDog: async (dogData) => {
    try {
      const response = await axios.post(`${BASE_URL}/store`, dogData)
      return response.data
    } catch (error) {
      console.error('Error creating dog:', error)
      throw error
    }
  }

  // updateDog: async (id, updatedDogData) => {
  //   try {
  //     const response = await axios.put(`${BASE_URL}/update/${id}`, updatedDogData);
  //     return response.data;
  //   } catch (error) {
  //     console.error('Error updating dog:', error);
  //     throw error;
  //   }
  // },

  // deleteDog: async (id) => {
  //   try {
  //     const response = await axios.delete(`${BASE_URL}/delete/${id}`);
  //     return response.data;
  //   } catch (error) {
  //     console.error('Error deleting dog:', error);
  //     throw error;
  //   }
  // }
}

export { DogService }
