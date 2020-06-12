{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ContainerDefinition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.ContainerDefinition where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the container, as part of model definition.
--
--
--
-- /See:/ 'containerDefinition' smart constructor.
data ContainerDefinition = ContainerDefinition'{_cdModelDataURL
                                                :: !(Maybe Text),
                                                _cdEnvironment ::
                                                !(Maybe (Map Text Text)),
                                                _cdContainerHostname ::
                                                !(Maybe Text),
                                                _cdImage :: !Text}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdModelDataURL' - The S3 path where the model artifacts, which result from model training, are stored. This path must point to a single gzip compressed tar archive (.tar.gz suffix). 
--
-- * 'cdEnvironment' - The environment variables to set in the Docker container. Each key and value in the @Environment@ string to string map can have length of up to 1024. We support up to 16 entries in the map. 
--
-- * 'cdContainerHostname' - The DNS host name for the container after Amazon SageMaker deploys it.
--
-- * 'cdImage' - The Amazon EC2 Container Registry (Amazon ECR) path where inference code is stored. If you are using your own custom algorithm instead of an algorithm provided by Amazon SageMaker, the inference code must meet Amazon SageMaker requirements. For more information, see <http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker> 
containerDefinition
    :: Text -- ^ 'cdImage'
    -> ContainerDefinition
containerDefinition pImage_
  = ContainerDefinition'{_cdModelDataURL = Nothing,
                         _cdEnvironment = Nothing,
                         _cdContainerHostname = Nothing, _cdImage = pImage_}

-- | The S3 path where the model artifacts, which result from model training, are stored. This path must point to a single gzip compressed tar archive (.tar.gz suffix). 
cdModelDataURL :: Lens' ContainerDefinition (Maybe Text)
cdModelDataURL = lens _cdModelDataURL (\ s a -> s{_cdModelDataURL = a})

-- | The environment variables to set in the Docker container. Each key and value in the @Environment@ string to string map can have length of up to 1024. We support up to 16 entries in the map. 
cdEnvironment :: Lens' ContainerDefinition (HashMap Text Text)
cdEnvironment = lens _cdEnvironment (\ s a -> s{_cdEnvironment = a}) . _Default . _Map

-- | The DNS host name for the container after Amazon SageMaker deploys it.
cdContainerHostname :: Lens' ContainerDefinition (Maybe Text)
cdContainerHostname = lens _cdContainerHostname (\ s a -> s{_cdContainerHostname = a})

-- | The Amazon EC2 Container Registry (Amazon ECR) path where inference code is stored. If you are using your own custom algorithm instead of an algorithm provided by Amazon SageMaker, the inference code must meet Amazon SageMaker requirements. For more information, see <http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker> 
cdImage :: Lens' ContainerDefinition Text
cdImage = lens _cdImage (\ s a -> s{_cdImage = a})

instance FromJSON ContainerDefinition where
        parseJSON
          = withObject "ContainerDefinition"
              (\ x ->
                 ContainerDefinition' <$>
                   (x .:? "ModelDataUrl") <*>
                     (x .:? "Environment" .!= mempty)
                     <*> (x .:? "ContainerHostname")
                     <*> (x .: "Image"))

instance Hashable ContainerDefinition where

instance NFData ContainerDefinition where

instance ToJSON ContainerDefinition where
        toJSON ContainerDefinition'{..}
          = object
              (catMaybes
                 [("ModelDataUrl" .=) <$> _cdModelDataURL,
                  ("Environment" .=) <$> _cdEnvironment,
                  ("ContainerHostname" .=) <$> _cdContainerHostname,
                  Just ("Image" .= _cdImage)])
