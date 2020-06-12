{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.S3Location
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.S3Location where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The location in S3 the contains the files to stream.
--
--
--
-- /See:/ 's3Location' smart constructor.
data S3Location = S3Location'{_slVersion ::
                              !(Maybe Text),
                              _slBucket :: !Text, _slKey :: !Text}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slVersion' - The file version.
--
-- * 'slBucket' - The S3 bucket that contains the file to stream.
--
-- * 'slKey' - The name of the file within the S3 bucket to stream.
s3Location
    :: Text -- ^ 'slBucket'
    -> Text -- ^ 'slKey'
    -> S3Location
s3Location pBucket_ pKey_
  = S3Location'{_slVersion = Nothing,
                _slBucket = pBucket_, _slKey = pKey_}

-- | The file version.
slVersion :: Lens' S3Location (Maybe Text)
slVersion = lens _slVersion (\ s a -> s{_slVersion = a})

-- | The S3 bucket that contains the file to stream.
slBucket :: Lens' S3Location Text
slBucket = lens _slBucket (\ s a -> s{_slBucket = a})

-- | The name of the file within the S3 bucket to stream.
slKey :: Lens' S3Location Text
slKey = lens _slKey (\ s a -> s{_slKey = a})

instance FromJSON S3Location where
        parseJSON
          = withObject "S3Location"
              (\ x ->
                 S3Location' <$>
                   (x .:? "version") <*> (x .: "bucket") <*>
                     (x .: "key"))

instance Hashable S3Location where

instance NFData S3Location where

instance ToJSON S3Location where
        toJSON S3Location'{..}
          = object
              (catMaybes
                 [("version" .=) <$> _slVersion,
                  Just ("bucket" .= _slBucket),
                  Just ("key" .= _slKey)])
