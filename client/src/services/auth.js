import axiosConfig from '../axiosConfig'

export const apiSignIn = (payload) => new Promise(async(resolve, reject) => {
    try {
        const response = await axiosConfig({
            method : 'POST',
            url : 'api/auth/signin',
            data : payload
        })
        resolve(response)
    } catch (error) {
        reject(error);
    } 
})
export const apiSignUp = (payload) => new Promise(async(resolve, reject) => {
    try {
        const response = await axiosConfig({
            method : 'POST',
            url : 'api/auth/signup',
            data : payload
        })
        resolve(response)
    } catch (error) {
        reject(error);
    } 
})