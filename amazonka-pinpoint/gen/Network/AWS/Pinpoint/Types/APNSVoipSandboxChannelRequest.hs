{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Apple VoIP Developer Push Notification Service channel definition.
--
-- /See:/ 'apnsVoipSandboxChannelRequest' smart constructor.
data APNSVoipSandboxChannelRequest = APNSVoipSandboxChannelRequest'{_avscrTokenKey
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _avscrPrivateKey
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _avscrEnabled
                                                                    ::
                                                                    !(Maybe
                                                                        Bool),
                                                                    _avscrTeamId
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _avscrBundleId
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _avscrDefaultAuthenticationMethod
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _avscrCertificate
                                                                    ::
                                                                    !(Maybe
                                                                        Text),
                                                                    _avscrTokenKeyId
                                                                    ::
                                                                    !(Maybe
                                                                        Text)}
                                       deriving (Eq, Read, Show, Data, Typeable,
                                                 Generic)

-- | Creates a value of 'APNSVoipSandboxChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avscrTokenKey' - The token key used for APNs Tokens.
--
-- * 'avscrPrivateKey' - The certificate private key.
--
-- * 'avscrEnabled' - If the channel is enabled for sending messages.
--
-- * 'avscrTeamId' - The team id used for APNs Tokens.
--
-- * 'avscrBundleId' - The bundle id used for APNs Tokens.
--
-- * 'avscrDefaultAuthenticationMethod' - The default authentication method used for APNs.
--
-- * 'avscrCertificate' - The distribution certificate from Apple.
--
-- * 'avscrTokenKeyId' - The token key used for APNs Tokens.
apnsVoipSandboxChannelRequest
    :: APNSVoipSandboxChannelRequest
apnsVoipSandboxChannelRequest
  = APNSVoipSandboxChannelRequest'{_avscrTokenKey =
                                     Nothing,
                                   _avscrPrivateKey = Nothing,
                                   _avscrEnabled = Nothing,
                                   _avscrTeamId = Nothing,
                                   _avscrBundleId = Nothing,
                                   _avscrDefaultAuthenticationMethod = Nothing,
                                   _avscrCertificate = Nothing,
                                   _avscrTokenKeyId = Nothing}

-- | The token key used for APNs Tokens.
avscrTokenKey :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrTokenKey = lens _avscrTokenKey (\ s a -> s{_avscrTokenKey = a})

-- | The certificate private key.
avscrPrivateKey :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrPrivateKey = lens _avscrPrivateKey (\ s a -> s{_avscrPrivateKey = a})

-- | If the channel is enabled for sending messages.
avscrEnabled :: Lens' APNSVoipSandboxChannelRequest (Maybe Bool)
avscrEnabled = lens _avscrEnabled (\ s a -> s{_avscrEnabled = a})

-- | The team id used for APNs Tokens.
avscrTeamId :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrTeamId = lens _avscrTeamId (\ s a -> s{_avscrTeamId = a})

-- | The bundle id used for APNs Tokens.
avscrBundleId :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrBundleId = lens _avscrBundleId (\ s a -> s{_avscrBundleId = a})

-- | The default authentication method used for APNs.
avscrDefaultAuthenticationMethod :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrDefaultAuthenticationMethod = lens _avscrDefaultAuthenticationMethod (\ s a -> s{_avscrDefaultAuthenticationMethod = a})

-- | The distribution certificate from Apple.
avscrCertificate :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrCertificate = lens _avscrCertificate (\ s a -> s{_avscrCertificate = a})

-- | The token key used for APNs Tokens.
avscrTokenKeyId :: Lens' APNSVoipSandboxChannelRequest (Maybe Text)
avscrTokenKeyId = lens _avscrTokenKeyId (\ s a -> s{_avscrTokenKeyId = a})

instance Hashable APNSVoipSandboxChannelRequest where

instance NFData APNSVoipSandboxChannelRequest where

instance ToJSON APNSVoipSandboxChannelRequest where
        toJSON APNSVoipSandboxChannelRequest'{..}
          = object
              (catMaybes
                 [("TokenKey" .=) <$> _avscrTokenKey,
                  ("PrivateKey" .=) <$> _avscrPrivateKey,
                  ("Enabled" .=) <$> _avscrEnabled,
                  ("TeamId" .=) <$> _avscrTeamId,
                  ("BundleId" .=) <$> _avscrBundleId,
                  ("DefaultAuthenticationMethod" .=) <$>
                    _avscrDefaultAuthenticationMethod,
                  ("Certificate" .=) <$> _avscrCertificate,
                  ("TokenKeyId" .=) <$> _avscrTokenKeyId])
