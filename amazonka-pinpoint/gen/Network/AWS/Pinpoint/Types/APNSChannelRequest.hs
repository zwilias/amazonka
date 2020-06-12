{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSChannelRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Apple Push Notification Service channel definition.
--
-- /See:/ 'apnsChannelRequest' smart constructor.
data APNSChannelRequest = APNSChannelRequest'{_acrTokenKey
                                              :: !(Maybe Text),
                                              _acrPrivateKey :: !(Maybe Text),
                                              _acrEnabled :: !(Maybe Bool),
                                              _acrTeamId :: !(Maybe Text),
                                              _acrBundleId :: !(Maybe Text),
                                              _acrDefaultAuthenticationMethod ::
                                              !(Maybe Text),
                                              _acrCertificate :: !(Maybe Text),
                                              _acrTokenKeyId :: !(Maybe Text)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APNSChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrTokenKey' - The token key used for APNs Tokens.
--
-- * 'acrPrivateKey' - The certificate private key.
--
-- * 'acrEnabled' - If the channel is enabled for sending messages.
--
-- * 'acrTeamId' - The team id used for APNs Tokens.
--
-- * 'acrBundleId' - The bundle id used for APNs Tokens.
--
-- * 'acrDefaultAuthenticationMethod' - The default authentication method used for APNs.
--
-- * 'acrCertificate' - The distribution certificate from Apple.
--
-- * 'acrTokenKeyId' - The token key used for APNs Tokens.
apnsChannelRequest
    :: APNSChannelRequest
apnsChannelRequest
  = APNSChannelRequest'{_acrTokenKey = Nothing,
                        _acrPrivateKey = Nothing, _acrEnabled = Nothing,
                        _acrTeamId = Nothing, _acrBundleId = Nothing,
                        _acrDefaultAuthenticationMethod = Nothing,
                        _acrCertificate = Nothing, _acrTokenKeyId = Nothing}

-- | The token key used for APNs Tokens.
acrTokenKey :: Lens' APNSChannelRequest (Maybe Text)
acrTokenKey = lens _acrTokenKey (\ s a -> s{_acrTokenKey = a})

-- | The certificate private key.
acrPrivateKey :: Lens' APNSChannelRequest (Maybe Text)
acrPrivateKey = lens _acrPrivateKey (\ s a -> s{_acrPrivateKey = a})

-- | If the channel is enabled for sending messages.
acrEnabled :: Lens' APNSChannelRequest (Maybe Bool)
acrEnabled = lens _acrEnabled (\ s a -> s{_acrEnabled = a})

-- | The team id used for APNs Tokens.
acrTeamId :: Lens' APNSChannelRequest (Maybe Text)
acrTeamId = lens _acrTeamId (\ s a -> s{_acrTeamId = a})

-- | The bundle id used for APNs Tokens.
acrBundleId :: Lens' APNSChannelRequest (Maybe Text)
acrBundleId = lens _acrBundleId (\ s a -> s{_acrBundleId = a})

-- | The default authentication method used for APNs.
acrDefaultAuthenticationMethod :: Lens' APNSChannelRequest (Maybe Text)
acrDefaultAuthenticationMethod = lens _acrDefaultAuthenticationMethod (\ s a -> s{_acrDefaultAuthenticationMethod = a})

-- | The distribution certificate from Apple.
acrCertificate :: Lens' APNSChannelRequest (Maybe Text)
acrCertificate = lens _acrCertificate (\ s a -> s{_acrCertificate = a})

-- | The token key used for APNs Tokens.
acrTokenKeyId :: Lens' APNSChannelRequest (Maybe Text)
acrTokenKeyId = lens _acrTokenKeyId (\ s a -> s{_acrTokenKeyId = a})

instance Hashable APNSChannelRequest where

instance NFData APNSChannelRequest where

instance ToJSON APNSChannelRequest where
        toJSON APNSChannelRequest'{..}
          = object
              (catMaybes
                 [("TokenKey" .=) <$> _acrTokenKey,
                  ("PrivateKey" .=) <$> _acrPrivateKey,
                  ("Enabled" .=) <$> _acrEnabled,
                  ("TeamId" .=) <$> _acrTeamId,
                  ("BundleId" .=) <$> _acrBundleId,
                  ("DefaultAuthenticationMethod" .=) <$>
                    _acrDefaultAuthenticationMethod,
                  ("Certificate" .=) <$> _acrCertificate,
                  ("TokenKeyId" .=) <$> _acrTokenKeyId])
