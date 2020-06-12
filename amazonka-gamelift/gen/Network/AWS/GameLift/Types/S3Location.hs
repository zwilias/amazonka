{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.S3Location
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.S3Location where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Location in Amazon Simple Storage Service (Amazon S3) where build files can be stored for access by Amazon GameLift. This location is specified in a 'CreateBuild' request. For more details, see the <http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build Create a Build with Files in Amazon S3> .
--
--
--
-- /See:/ 's3Location' smart constructor.
data S3Location = S3Location'{_slBucket ::
                              !(Maybe Text),
                              _slKey :: !(Maybe Text),
                              _slRoleARN :: !(Maybe Text)}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slBucket' - Amazon S3 bucket identifier. This is the name of your S3 bucket.
--
-- * 'slKey' - Name of the zip file containing your build files. 
--
-- * 'slRoleARN' - Amazon Resource Name (<http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN> ) for the access role that allows Amazon GameLift to access your S3 bucket.
s3Location
    :: S3Location
s3Location
  = S3Location'{_slBucket = Nothing, _slKey = Nothing,
                _slRoleARN = Nothing}

-- | Amazon S3 bucket identifier. This is the name of your S3 bucket.
slBucket :: Lens' S3Location (Maybe Text)
slBucket = lens _slBucket (\ s a -> s{_slBucket = a})

-- | Name of the zip file containing your build files. 
slKey :: Lens' S3Location (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | Amazon Resource Name (<http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN> ) for the access role that allows Amazon GameLift to access your S3 bucket.
slRoleARN :: Lens' S3Location (Maybe Text)
slRoleARN = lens _slRoleARN (\ s a -> s{_slRoleARN = a})

instance FromJSON S3Location where
        parseJSON
          = withObject "S3Location"
              (\ x ->
                 S3Location' <$>
                   (x .:? "Bucket") <*> (x .:? "Key") <*>
                     (x .:? "RoleArn"))

instance Hashable S3Location where

instance NFData S3Location where

instance ToJSON S3Location where
        toJSON S3Location'{..}
          = object
              (catMaybes
                 [("Bucket" .=) <$> _slBucket, ("Key" .=) <$> _slKey,
                  ("RoleArn" .=) <$> _slRoleARN])
