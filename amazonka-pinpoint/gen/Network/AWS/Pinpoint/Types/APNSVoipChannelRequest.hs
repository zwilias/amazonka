{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSVoipChannelRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSVoipChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Apple VoIP Push Notification Service channel definition.
--
-- /See:/ 'apnsVoipChannelRequest' smart constructor.
data APNSVoipChannelRequest = APNSVoipChannelRequest'{_avcrTokenKey
                                                      :: !(Maybe Text),
                                                      _avcrPrivateKey ::
                                                      !(Maybe Text),
                                                      _avcrEnabled ::
                                                      !(Maybe Bool),
                                                      _avcrTeamId ::
                                                      !(Maybe Text),
                                                      _avcrBundleId ::
                                                      !(Maybe Text),
                                                      _avcrDefaultAuthenticationMethod
                                                      :: !(Maybe Text),
                                                      _avcrCertificate ::
                                                      !(Maybe Text),
                                                      _avcrTokenKeyId ::
                                                      !(Maybe Text)}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'APNSVoipChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avcrTokenKey' - The token key used for APNs Tokens.
--
-- * 'avcrPrivateKey' - The certificate private key.
--
-- * 'avcrEnabled' - If the channel is enabled for sending messages.
--
-- * 'avcrTeamId' - The team id used for APNs Tokens.
--
-- * 'avcrBundleId' - The bundle id used for APNs Tokens.
--
-- * 'avcrDefaultAuthenticationMethod' - The default authentication method used for APNs.
--
-- * 'avcrCertificate' - The distribution certificate from Apple.
--
-- * 'avcrTokenKeyId' - The token key used for APNs Tokens.
apnsVoipChannelRequest
    :: APNSVoipChannelRequest
apnsVoipChannelRequest
  = APNSVoipChannelRequest'{_avcrTokenKey = Nothing,
                            _avcrPrivateKey = Nothing, _avcrEnabled = Nothing,
                            _avcrTeamId = Nothing, _avcrBundleId = Nothing,
                            _avcrDefaultAuthenticationMethod = Nothing,
                            _avcrCertificate = Nothing,
                            _avcrTokenKeyId = Nothing}

-- | The token key used for APNs Tokens.
avcrTokenKey :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrTokenKey = lens _avcrTokenKey (\ s a -> s{_avcrTokenKey = a})

-- | The certificate private key.
avcrPrivateKey :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrPrivateKey = lens _avcrPrivateKey (\ s a -> s{_avcrPrivateKey = a})

-- | If the channel is enabled for sending messages.
avcrEnabled :: Lens' APNSVoipChannelRequest (Maybe Bool)
avcrEnabled = lens _avcrEnabled (\ s a -> s{_avcrEnabled = a})

-- | The team id used for APNs Tokens.
avcrTeamId :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrTeamId = lens _avcrTeamId (\ s a -> s{_avcrTeamId = a})

-- | The bundle id used for APNs Tokens.
avcrBundleId :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrBundleId = lens _avcrBundleId (\ s a -> s{_avcrBundleId = a})

-- | The default authentication method used for APNs.
avcrDefaultAuthenticationMethod :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrDefaultAuthenticationMethod = lens _avcrDefaultAuthenticationMethod (\ s a -> s{_avcrDefaultAuthenticationMethod = a})

-- | The distribution certificate from Apple.
avcrCertificate :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrCertificate = lens _avcrCertificate (\ s a -> s{_avcrCertificate = a})

-- | The token key used for APNs Tokens.
avcrTokenKeyId :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrTokenKeyId = lens _avcrTokenKeyId (\ s a -> s{_avcrTokenKeyId = a})

instance Hashable APNSVoipChannelRequest where

instance NFData APNSVoipChannelRequest where

instance ToJSON APNSVoipChannelRequest where
        toJSON APNSVoipChannelRequest'{..}
          = object
              (catMaybes
                 [("TokenKey" .=) <$> _avcrTokenKey,
                  ("PrivateKey" .=) <$> _avcrPrivateKey,
                  ("Enabled" .=) <$> _avcrEnabled,
                  ("TeamId" .=) <$> _avcrTeamId,
                  ("BundleId" .=) <$> _avcrBundleId,
                  ("DefaultAuthenticationMethod" .=) <$>
                    _avcrDefaultAuthenticationMethod,
                  ("Certificate" .=) <$> _avcrCertificate,
                  ("TokenKeyId" .=) <$> _avcrTokenKeyId])
