# React Native Dockerize
Setting up the development environment using docker.  
## 1. Docker build  
```
> docker pull jungseoro/react-native 
```  
or  
```
> docker build . -t <image name> 
``` 
and modify `services name` in `docker-compose.yml`
## 2. Fill in `.env`  
This docker supports device debugging.  
Therefore, you need an adb pair on the same wifi over Android OS 11.  
Please refer to [Android Developers](https://developer.android.com/studio/command-line/adb?hl=ko#connect-to-a-device-over-wi-fi-android-11+) for details.  
## 3. Start metro bundler  
```
> docker-compose up
```  
If the app is not installed on the device, build it with the command below, otherwise run the app.
```
> docker exec -it react-native sh -c "cd /vol && npx react-native run-android"
```
## Reference  
* [React Native Document](https://reactnative.dev/docs/environment-setup)
* [ADB Document](https://developer.android.com/studio/command-line/adb?hl=ko)