{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Apple Development Push Notification Service channel definition.
--
-- /See:/ 'apnsSandboxChannelRequest' smart constructor.
data APNSSandboxChannelRequest = APNSSandboxChannelRequest'{_ascrTokenKey
                                                            :: !(Maybe Text),
                                                            _ascrPrivateKey ::
                                                            !(Maybe Text),
                                                            _ascrEnabled ::
                                                            !(Maybe Bool),
                                                            _ascrTeamId ::
                                                            !(Maybe Text),
                                                            _ascrBundleId ::
                                                            !(Maybe Text),
                                                            _ascrDefaultAuthenticationMethod
                                                            :: !(Maybe Text),
                                                            _ascrCertificate ::
                                                            !(Maybe Text),
                                                            _ascrTokenKeyId ::
                                                            !(Maybe Text)}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'APNSSandboxChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascrTokenKey' - The token key used for APNs Tokens.
--
-- * 'ascrPrivateKey' - The certificate private key.
--
-- * 'ascrEnabled' - If the channel is enabled for sending messages.
--
-- * 'ascrTeamId' - The team id used for APNs Tokens.
--
-- * 'ascrBundleId' - The bundle id used for APNs Tokens.
--
-- * 'ascrDefaultAuthenticationMethod' - The default authentication method used for APNs.
--
-- * 'ascrCertificate' - The distribution certificate from Apple.
--
-- * 'ascrTokenKeyId' - The token key used for APNs Tokens.
apnsSandboxChannelRequest
    :: APNSSandboxChannelRequest
apnsSandboxChannelRequest
  = APNSSandboxChannelRequest'{_ascrTokenKey = Nothing,
                               _ascrPrivateKey = Nothing,
                               _ascrEnabled = Nothing, _ascrTeamId = Nothing,
                               _ascrBundleId = Nothing,
                               _ascrDefaultAuthenticationMethod = Nothing,
                               _ascrCertificate = Nothing,
                               _ascrTokenKeyId = Nothing}

-- | The token key used for APNs Tokens.
ascrTokenKey :: Lens' APNSSandboxChannelRequest (Maybe Text)
ascrTokenKey = lens _ascrTokenKey (\ s a -> s{_ascrTokenKey = a})

-- | The certificate private key.
ascrPrivateKey :: Lens' APNSSandboxChannelRequest (Maybe Text)
ascrPrivateKey = lens _ascrPrivateKey (\ s a -> s{_ascrPrivateKey = a})

-- | If the channel is enabled for sending messages.
ascrEnabled :: Lens' APNSSandboxChannelRequest (Maybe Bool)
ascrEnabled = lens _ascrEnabled (\ s a -> s{_ascrEnabled = a})

-- | The team id used for APNs Tokens.
ascrTeamId :: Lens' APNSSandboxChannelRequest (Maybe Text)
ascrTeamId = lens _ascrTeamId (\ s a -> s{_ascrTeamId = a})

-- | The bundle id used for APNs Tokens.
ascrBundleId :: Lens' APNSSandboxChannelRequest (Maybe Text)
ascrBundleId = lens _ascrBundleId (\ s a -> s{_ascrBundleId = a})

-- | The default authentication method used for APNs.
ascrDefaultAuthenticationMethod :: Lens' APNSSandboxChannelRequest (Maybe Text)
ascrDefaultAuthenticationMethod = lens _ascrDefaultAuthenticationMethod (\ s a -> s{_ascrDefaultAuthenticationMethod = a})

-- | The distribution certificate from Apple.
ascrCertificate :: Lens' APNSSandboxChannelRequest (Maybe Text)
ascrCertificate = lens _ascrCertificate (\ s a -> s{_ascrCertificate = a})

-- | The token key used for APNs Tokens.
ascrTokenKeyId :: Lens' APNSSandboxChannelRequest (Maybe Text)
ascrTokenKeyId = lens _ascrTokenKeyId (\ s a -> s{_ascrTokenKeyId = a})

instance Hashable APNSSandboxChannelRequest where

instance NFData APNSSandboxChannelRequest where

instance ToJSON APNSSandboxChannelRequest where
        toJSON APNSSandboxChannelRequest'{..}
          = object
              (catMaybes
                 [("TokenKey" .=) <$> _ascrTokenKey,
                  ("PrivateKey" .=) <$> _ascrPrivateKey,
                  ("Enabled" .=) <$> _ascrEnabled,
                  ("TeamId" .=) <$> _ascrTeamId,
                  ("BundleId" .=) <$> _ascrBundleId,
                  ("DefaultAuthenticationMethod" .=) <$>
                    _ascrDefaultAuthenticationMethod,
                  ("Certificate" .=) <$> _ascrCertificate,
                  ("TokenKeyId" .=) <$> _ascrTokenKeyId])
