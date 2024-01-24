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

  createDog: async (dogData) => {
    try {
      const response = await axios.post(`${BASE_URL}/store`, dogData)
      return response.data
    } catch (error) {
      console.error('Error creating dog:', error)
      throw error
    }
  }

}

export { DogService }
