import React from 'react';
import './LandingFeatures.sass'
import FaceRecognition  from './LandingFeaturesService/faceRecognition.jsx';
import ColorizationPhotos from './LandingFeaturesService/ColorizationPhotos';
import SaveFamilyStories from './LandingFeaturesService/SaveFamilyStories';

const LandingFeatures = () => {
  return (
    <div className = "landing-features">
      <div className = "sectionFeatures">
        <div className = "sectionFeatures__container">
          <h2 className = "sectionFeatures__titel"> Возможности сервиса</h2>

          <p className = "sectionFeatures__text">
            Проект направлен не в прошлое, а в будущее 
            - цель не изучить предков, а оставить насление потомкам
           </p>
           <img src="./LandingFeaturesService/images/jpg/faceRecognition-img.jpg" alt=""/>
           <FaceRecognition />
           <ColorizationPhotos />
           <SaveFamilyStories />
 
        </div>
        
      </div>
      
    </div>
      
  );
}

export default LandingFeatures;
