{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.OutputDataConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.OutputDataConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about how to store model training results (model artifacts).
--
--
--
-- /See:/ 'outputDataConfig' smart constructor.
data OutputDataConfig = OutputDataConfig'{_odcKMSKeyId
                                          :: !(Maybe Text),
                                          _odcS3OutputPath :: !Text}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputDataConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odcKMSKeyId' - The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption. 
--
-- * 'odcS3OutputPath' - Identifies the S3 path where you want Amazon SageMaker to store the model artifacts. For example, @s3://bucket-name/key-name-prefix@ . 
outputDataConfig
    :: Text -- ^ 'odcS3OutputPath'
    -> OutputDataConfig
outputDataConfig pS3OutputPath_
  = OutputDataConfig'{_odcKMSKeyId = Nothing,
                      _odcS3OutputPath = pS3OutputPath_}

-- | The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption. 
odcKMSKeyId :: Lens' OutputDataConfig (Maybe Text)
odcKMSKeyId = lens _odcKMSKeyId (\ s a -> s{_odcKMSKeyId = a})

-- | Identifies the S3 path where you want Amazon SageMaker to store the model artifacts. For example, @s3://bucket-name/key-name-prefix@ . 
odcS3OutputPath :: Lens' OutputDataConfig Text
odcS3OutputPath = lens _odcS3OutputPath (\ s a -> s{_odcS3OutputPath = a})

instance FromJSON OutputDataConfig where
        parseJSON
          = withObject "OutputDataConfig"
              (\ x ->
                 OutputDataConfig' <$>
                   (x .:? "KmsKeyId") <*> (x .: "S3OutputPath"))

instance Hashable OutputDataConfig where

instance NFData OutputDataConfig where

instance ToJSON OutputDataConfig where
        toJSON OutputDataConfig'{..}
          = object
              (catMaybes
                 [("KmsKeyId" .=) <$> _odcKMSKeyId,
                  Just ("S3OutputPath" .= _odcS3OutputPath)])
