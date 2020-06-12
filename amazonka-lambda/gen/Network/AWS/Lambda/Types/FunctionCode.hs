{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.FunctionCode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.FunctionCode where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The code for the Lambda function.
--
--
--
-- /See:/ 'functionCode' smart constructor.
data FunctionCode = FunctionCode'{_fcS3ObjectVersion
                                  :: !(Maybe Text),
                                  _fcS3Key :: !(Maybe Text),
                                  _fcZipFile :: !(Maybe (Sensitive Base64)),
                                  _fcS3Bucket :: !(Maybe Text)}
                      deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FunctionCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcS3ObjectVersion' - The Amazon S3 object (the deployment package) version you want to upload.
--
-- * 'fcS3Key' - The Amazon S3 object (the deployment package) key name you want to upload.
--
-- * 'fcZipFile' - The contents of your zip file containing your deployment package. If you are using the web API directly, the contents of the zip file must be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding for you. For more information about creating a .zip file, see <http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html Execution Permissions> in the __AWS Lambda Developer Guide__ . -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'fcS3Bucket' - Amazon S3 bucket name where the .zip file containing your deployment package is stored. This bucket must reside in the same AWS region where you are creating the Lambda function.
functionCode
    :: FunctionCode
functionCode
  = FunctionCode'{_fcS3ObjectVersion = Nothing,
                  _fcS3Key = Nothing, _fcZipFile = Nothing,
                  _fcS3Bucket = Nothing}

-- | The Amazon S3 object (the deployment package) version you want to upload.
fcS3ObjectVersion :: Lens' FunctionCode (Maybe Text)
fcS3ObjectVersion = lens _fcS3ObjectVersion (\ s a -> s{_fcS3ObjectVersion = a})

-- | The Amazon S3 object (the deployment package) key name you want to upload.
fcS3Key :: Lens' FunctionCode (Maybe Text)
fcS3Key = lens _fcS3Key (\ s a -> s{_fcS3Key = a})

-- | The contents of your zip file containing your deployment package. If you are using the web API directly, the contents of the zip file must be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding for you. For more information about creating a .zip file, see <http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html Execution Permissions> in the __AWS Lambda Developer Guide__ . -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
fcZipFile :: Lens' FunctionCode (Maybe ByteString)
fcZipFile = lens _fcZipFile (\ s a -> s{_fcZipFile = a}) . mapping (_Sensitive . _Base64)

-- | Amazon S3 bucket name where the .zip file containing your deployment package is stored. This bucket must reside in the same AWS region where you are creating the Lambda function.
fcS3Bucket :: Lens' FunctionCode (Maybe Text)
fcS3Bucket = lens _fcS3Bucket (\ s a -> s{_fcS3Bucket = a})

instance Hashable FunctionCode where

instance NFData FunctionCode where

instance ToJSON FunctionCode where
        toJSON FunctionCode'{..}
          = object
              (catMaybes
                 [("S3ObjectVersion" .=) <$> _fcS3ObjectVersion,
                  ("S3Key" .=) <$> _fcS3Key,
                  ("ZipFile" .=) <$> _fcZipFile,
                  ("S3Bucket" .=) <$> _fcS3Bucket])
