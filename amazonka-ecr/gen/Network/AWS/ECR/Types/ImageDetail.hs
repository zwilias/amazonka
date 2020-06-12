{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ImageDetail
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECR.Types.ImageDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object that describes an image returned by a 'DescribeImages' operation.
--
--
--
-- /See:/ 'imageDetail' smart constructor.
data ImageDetail = ImageDetail'{_idRegistryId ::
                                !(Maybe Text),
                                _idImageTags :: !(Maybe [Text]),
                                _idImageSizeInBytes :: !(Maybe Integer),
                                _idImageDigest :: !(Maybe Text),
                                _idImagePushedAt :: !(Maybe POSIX),
                                _idRepositoryName :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idRegistryId' - The AWS account ID associated with the registry to which this image belongs.
--
-- * 'idImageTags' - The list of tags associated with this image.
--
-- * 'idImageSizeInBytes' - The size, in bytes, of the image in the repository.
--
-- * 'idImageDigest' - The @sha256@ digest of the image manifest.
--
-- * 'idImagePushedAt' - The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. 
--
-- * 'idRepositoryName' - The name of the repository to which this image belongs.
imageDetail
    :: ImageDetail
imageDetail
  = ImageDetail'{_idRegistryId = Nothing,
                 _idImageTags = Nothing,
                 _idImageSizeInBytes = Nothing,
                 _idImageDigest = Nothing, _idImagePushedAt = Nothing,
                 _idRepositoryName = Nothing}

-- | The AWS account ID associated with the registry to which this image belongs.
idRegistryId :: Lens' ImageDetail (Maybe Text)
idRegistryId = lens _idRegistryId (\ s a -> s{_idRegistryId = a})

-- | The list of tags associated with this image.
idImageTags :: Lens' ImageDetail [Text]
idImageTags = lens _idImageTags (\ s a -> s{_idImageTags = a}) . _Default . _Coerce

-- | The size, in bytes, of the image in the repository.
idImageSizeInBytes :: Lens' ImageDetail (Maybe Integer)
idImageSizeInBytes = lens _idImageSizeInBytes (\ s a -> s{_idImageSizeInBytes = a})

-- | The @sha256@ digest of the image manifest.
idImageDigest :: Lens' ImageDetail (Maybe Text)
idImageDigest = lens _idImageDigest (\ s a -> s{_idImageDigest = a})

-- | The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. 
idImagePushedAt :: Lens' ImageDetail (Maybe UTCTime)
idImagePushedAt = lens _idImagePushedAt (\ s a -> s{_idImagePushedAt = a}) . mapping _Time

-- | The name of the repository to which this image belongs.
idRepositoryName :: Lens' ImageDetail (Maybe Text)
idRepositoryName = lens _idRepositoryName (\ s a -> s{_idRepositoryName = a})

instance FromJSON ImageDetail where
        parseJSON
          = withObject "ImageDetail"
              (\ x ->
                 ImageDetail' <$>
                   (x .:? "registryId") <*>
                     (x .:? "imageTags" .!= mempty)
                     <*> (x .:? "imageSizeInBytes")
                     <*> (x .:? "imageDigest")
                     <*> (x .:? "imagePushedAt")
                     <*> (x .:? "repositoryName"))

instance Hashable ImageDetail where

instance NFData ImageDetail where
