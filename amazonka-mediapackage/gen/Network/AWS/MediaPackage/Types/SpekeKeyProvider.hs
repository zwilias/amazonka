{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.SpekeKeyProvider
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaPackage.Types.SpekeKeyProvider where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
--
-- /See:/ 'spekeKeyProvider' smart constructor.
data SpekeKeyProvider = SpekeKeyProvider'{_skpURL ::
                                          !Text,
                                          _skpResourceId :: !Text,
                                          _skpRoleARN :: !Text,
                                          _skpSystemIds :: ![Text]}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpekeKeyProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'skpURL' - The URL of the external key provider service.
--
-- * 'skpResourceId' - The resource ID to include in key requests.
--
-- * 'skpRoleARN' - An Amazon Resource Name (ARN) of an IAM role that AWS Elemental MediaPackage will assume when accessing the key provider service.
--
-- * 'skpSystemIds' - The system IDs to include in key requests.
spekeKeyProvider
    :: Text -- ^ 'skpURL'
    -> Text -- ^ 'skpResourceId'
    -> Text -- ^ 'skpRoleARN'
    -> SpekeKeyProvider
spekeKeyProvider pURL_ pResourceId_ pRoleARN_
  = SpekeKeyProvider'{_skpURL = pURL_,
                      _skpResourceId = pResourceId_,
                      _skpRoleARN = pRoleARN_, _skpSystemIds = mempty}

-- | The URL of the external key provider service.
skpURL :: Lens' SpekeKeyProvider Text
skpURL = lens _skpURL (\ s a -> s{_skpURL = a})

-- | The resource ID to include in key requests.
skpResourceId :: Lens' SpekeKeyProvider Text
skpResourceId = lens _skpResourceId (\ s a -> s{_skpResourceId = a})

-- | An Amazon Resource Name (ARN) of an IAM role that AWS Elemental MediaPackage will assume when accessing the key provider service.
skpRoleARN :: Lens' SpekeKeyProvider Text
skpRoleARN = lens _skpRoleARN (\ s a -> s{_skpRoleARN = a})

-- | The system IDs to include in key requests.
skpSystemIds :: Lens' SpekeKeyProvider [Text]
skpSystemIds = lens _skpSystemIds (\ s a -> s{_skpSystemIds = a}) . _Coerce

instance FromJSON SpekeKeyProvider where
        parseJSON
          = withObject "SpekeKeyProvider"
              (\ x ->
                 SpekeKeyProvider' <$>
                   (x .: "url") <*> (x .: "resourceId") <*>
                     (x .: "roleArn")
                     <*> (x .:? "systemIds" .!= mempty))

instance Hashable SpekeKeyProvider where

instance NFData SpekeKeyProvider where

instance ToJSON SpekeKeyProvider where
        toJSON SpekeKeyProvider'{..}
          = object
              (catMaybes
                 [Just ("url" .= _skpURL),
                  Just ("resourceId" .= _skpResourceId),
                  Just ("roleArn" .= _skpRoleARN),
                  Just ("systemIds" .= _skpSystemIds)])
