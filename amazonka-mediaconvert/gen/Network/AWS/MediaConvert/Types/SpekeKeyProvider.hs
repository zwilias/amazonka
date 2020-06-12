{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.SpekeKeyProvider
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.SpekeKeyProvider where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Settings for use with a SPEKE key provider
--
-- /See:/ 'spekeKeyProvider' smart constructor.
data SpekeKeyProvider = SpekeKeyProvider'{_skpResourceId
                                          :: !(Maybe Text),
                                          _skpURL :: !(Maybe Text),
                                          _skpSystemIds :: !(Maybe [Text])}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpekeKeyProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'skpResourceId' - The SPEKE-compliant server uses Resource ID (ResourceId) to identify content.
--
-- * 'skpURL' - Use URL (Url) to specify the SPEKE-compliant server that will provide keys for content.
--
-- * 'skpSystemIds' - Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. Other group types support one system id.
spekeKeyProvider
    :: SpekeKeyProvider
spekeKeyProvider
  = SpekeKeyProvider'{_skpResourceId = Nothing,
                      _skpURL = Nothing, _skpSystemIds = Nothing}

-- | The SPEKE-compliant server uses Resource ID (ResourceId) to identify content.
skpResourceId :: Lens' SpekeKeyProvider (Maybe Text)
skpResourceId = lens _skpResourceId (\ s a -> s{_skpResourceId = a})

-- | Use URL (Url) to specify the SPEKE-compliant server that will provide keys for content.
skpURL :: Lens' SpekeKeyProvider (Maybe Text)
skpURL = lens _skpURL (\ s a -> s{_skpURL = a})

-- | Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. Other group types support one system id.
skpSystemIds :: Lens' SpekeKeyProvider [Text]
skpSystemIds = lens _skpSystemIds (\ s a -> s{_skpSystemIds = a}) . _Default . _Coerce

instance FromJSON SpekeKeyProvider where
        parseJSON
          = withObject "SpekeKeyProvider"
              (\ x ->
                 SpekeKeyProvider' <$>
                   (x .:? "resourceId") <*> (x .:? "url") <*>
                     (x .:? "systemIds" .!= mempty))

instance Hashable SpekeKeyProvider where

instance NFData SpekeKeyProvider where

instance ToJSON SpekeKeyProvider where
        toJSON SpekeKeyProvider'{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _skpResourceId,
                  ("url" .=) <$> _skpURL,
                  ("systemIds" .=) <$> _skpSystemIds])
