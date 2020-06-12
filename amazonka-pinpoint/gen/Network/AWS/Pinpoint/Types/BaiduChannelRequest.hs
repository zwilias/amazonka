{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.BaiduChannelRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.BaiduChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Baidu Cloud Push credentials
--
-- /See:/ 'baiduChannelRequest' smart constructor.
data BaiduChannelRequest = BaiduChannelRequest'{_bcrAPIKey
                                                :: !(Maybe Text),
                                                _bcrEnabled :: !(Maybe Bool),
                                                _bcrSecretKey :: !(Maybe Text)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BaiduChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcrAPIKey' - Platform credential API key from Baidu.
--
-- * 'bcrEnabled' - If the channel is enabled for sending messages.
--
-- * 'bcrSecretKey' - Platform credential Secret key from Baidu.
baiduChannelRequest
    :: BaiduChannelRequest
baiduChannelRequest
  = BaiduChannelRequest'{_bcrAPIKey = Nothing,
                         _bcrEnabled = Nothing, _bcrSecretKey = Nothing}

-- | Platform credential API key from Baidu.
bcrAPIKey :: Lens' BaiduChannelRequest (Maybe Text)
bcrAPIKey = lens _bcrAPIKey (\ s a -> s{_bcrAPIKey = a})

-- | If the channel is enabled for sending messages.
bcrEnabled :: Lens' BaiduChannelRequest (Maybe Bool)
bcrEnabled = lens _bcrEnabled (\ s a -> s{_bcrEnabled = a})

-- | Platform credential Secret key from Baidu.
bcrSecretKey :: Lens' BaiduChannelRequest (Maybe Text)
bcrSecretKey = lens _bcrSecretKey (\ s a -> s{_bcrSecretKey = a})

instance Hashable BaiduChannelRequest where

instance NFData BaiduChannelRequest where

instance ToJSON BaiduChannelRequest where
        toJSON BaiduChannelRequest'{..}
          = object
              (catMaybes
                 [("ApiKey" .=) <$> _bcrAPIKey,
                  ("Enabled" .=) <$> _bcrEnabled,
                  ("SecretKey" .=) <$> _bcrSecretKey])
