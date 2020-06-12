{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.SageMakerMachineLearningModelResourceData
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Greengrass.Types.SageMakerMachineLearningModelResourceData where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Attributes that define an SageMaker machine learning resource.
--
-- /See:/ 'sageMakerMachineLearningModelResourceData' smart constructor.
data SageMakerMachineLearningModelResourceData = SageMakerMachineLearningModelResourceData'{_smmlmrdSageMakerJobARN
                                                                                            ::
                                                                                            !(Maybe
                                                                                                Text),
                                                                                            _smmlmrdDestinationPath
                                                                                            ::
                                                                                            !(Maybe
                                                                                                Text)}
                                                   deriving (Eq, Read, Show,
                                                             Data, Typeable,
                                                             Generic)

-- | Creates a value of 'SageMakerMachineLearningModelResourceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smmlmrdSageMakerJobARN' - The ARN of the SageMaker training job that represents the source model.
--
-- * 'smmlmrdDestinationPath' - The absolute local path of the resource inside the Lambda environment.
sageMakerMachineLearningModelResourceData
    :: SageMakerMachineLearningModelResourceData
sageMakerMachineLearningModelResourceData
  = SageMakerMachineLearningModelResourceData'{_smmlmrdSageMakerJobARN
                                                 = Nothing,
                                               _smmlmrdDestinationPath =
                                                 Nothing}

-- | The ARN of the SageMaker training job that represents the source model.
smmlmrdSageMakerJobARN :: Lens' SageMakerMachineLearningModelResourceData (Maybe Text)
smmlmrdSageMakerJobARN = lens _smmlmrdSageMakerJobARN (\ s a -> s{_smmlmrdSageMakerJobARN = a})

-- | The absolute local path of the resource inside the Lambda environment.
smmlmrdDestinationPath :: Lens' SageMakerMachineLearningModelResourceData (Maybe Text)
smmlmrdDestinationPath = lens _smmlmrdDestinationPath (\ s a -> s{_smmlmrdDestinationPath = a})

instance FromJSON
           SageMakerMachineLearningModelResourceData
         where
        parseJSON
          = withObject
              "SageMakerMachineLearningModelResourceData"
              (\ x ->
                 SageMakerMachineLearningModelResourceData' <$>
                   (x .:? "SageMakerJobArn") <*>
                     (x .:? "DestinationPath"))

instance Hashable
           SageMakerMachineLearningModelResourceData
         where

instance NFData
           SageMakerMachineLearningModelResourceData
         where

instance ToJSON
           SageMakerMachineLearningModelResourceData
         where
        toJSON SageMakerMachineLearningModelResourceData'{..}
          = object
              (catMaybes
                 [("SageMakerJobArn" .=) <$> _smmlmrdSageMakerJobARN,
                  ("DestinationPath" .=) <$> _smmlmrdDestinationPath])
