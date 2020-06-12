{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Apple VoIP Developer Push Notification Service channel definition.
--
-- /See:/ 'apnsVoipSandboxChannelResponse' smart constructor.
data APNSVoipSandboxChannelResponse = APNSVoipSandboxChannelResponse'{_avscPlatform
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _avscLastModifiedDate
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _avscEnabled
                                                                      ::
                                                                      !(Maybe
                                                                          Bool),
                                                                      _avscHasTokenKey
                                                                      ::
                                                                      !(Maybe
                                                                          Bool),
                                                                      _avscDefaultAuthenticationMethod
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _avscIsArchived
                                                                      ::
                                                                      !(Maybe
                                                                          Bool),
                                                                      _avscApplicationId
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _avscVersion
                                                                      ::
                                                                      !(Maybe
                                                                          Int),
                                                                      _avscId ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _avscCreationDate
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _avscLastModifiedBy
                                                                      ::
                                                                      !(Maybe
                                                                          Text),
                                                                      _avscHasCredential
                                                                      ::
                                                                      !(Maybe
                                                                          Bool)}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'APNSVoipSandboxChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avscPlatform' - The platform type. Will be APNS.
--
-- * 'avscLastModifiedDate' - Last date this was updated
--
-- * 'avscEnabled' - If the channel is enabled for sending messages.
--
-- * 'avscHasTokenKey' - If the channel is registered with a token key for authentication.
--
-- * 'avscDefaultAuthenticationMethod' - The default authentication method used for APNs.
--
-- * 'avscIsArchived' - Is this channel archived
--
-- * 'avscApplicationId' - Application id
--
-- * 'avscVersion' - Version of channel
--
-- * 'avscId' - Channel ID. Not used, only for backwards compatibility.
--
-- * 'avscCreationDate' - When was this segment created
--
-- * 'avscLastModifiedBy' - Who made the last change
--
-- * 'avscHasCredential' - If the channel is registered with a credential for authentication.
apnsVoipSandboxChannelResponse
    :: APNSVoipSandboxChannelResponse
apnsVoipSandboxChannelResponse
  = APNSVoipSandboxChannelResponse'{_avscPlatform =
                                      Nothing,
                                    _avscLastModifiedDate = Nothing,
                                    _avscEnabled = Nothing,
                                    _avscHasTokenKey = Nothing,
                                    _avscDefaultAuthenticationMethod = Nothing,
                                    _avscIsArchived = Nothing,
                                    _avscApplicationId = Nothing,
                                    _avscVersion = Nothing, _avscId = Nothing,
                                    _avscCreationDate = Nothing,
                                    _avscLastModifiedBy = Nothing,
                                    _avscHasCredential = Nothing}

-- | The platform type. Will be APNS.
avscPlatform :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
avscPlatform = lens _avscPlatform (\ s a -> s{_avscPlatform = a})

-- | Last date this was updated
avscLastModifiedDate :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
avscLastModifiedDate = lens _avscLastModifiedDate (\ s a -> s{_avscLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
avscEnabled :: Lens' APNSVoipSandboxChannelResponse (Maybe Bool)
avscEnabled = lens _avscEnabled (\ s a -> s{_avscEnabled = a})

-- | If the channel is registered with a token key for authentication.
avscHasTokenKey :: Lens' APNSVoipSandboxChannelResponse (Maybe Bool)
avscHasTokenKey = lens _avscHasTokenKey (\ s a -> s{_avscHasTokenKey = a})

-- | The default authentication method used for APNs.
avscDefaultAuthenticationMethod :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
avscDefaultAuthenticationMethod = lens _avscDefaultAuthenticationMethod (\ s a -> s{_avscDefaultAuthenticationMethod = a})

-- | Is this channel archived
avscIsArchived :: Lens' APNSVoipSandboxChannelResponse (Maybe Bool)
avscIsArchived = lens _avscIsArchived (\ s a -> s{_avscIsArchived = a})

-- | Application id
avscApplicationId :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
avscApplicationId = lens _avscApplicationId (\ s a -> s{_avscApplicationId = a})

-- | Version of channel
avscVersion :: Lens' APNSVoipSandboxChannelResponse (Maybe Int)
avscVersion = lens _avscVersion (\ s a -> s{_avscVersion = a})

-- | Channel ID. Not used, only for backwards compatibility.
avscId :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
avscId = lens _avscId (\ s a -> s{_avscId = a})

-- | When was this segment created
avscCreationDate :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
avscCreationDate = lens _avscCreationDate (\ s a -> s{_avscCreationDate = a})

-- | Who made the last change
avscLastModifiedBy :: Lens' APNSVoipSandboxChannelResponse (Maybe Text)
avscLastModifiedBy = lens _avscLastModifiedBy (\ s a -> s{_avscLastModifiedBy = a})

-- | If the channel is registered with a credential for authentication.
avscHasCredential :: Lens' APNSVoipSandboxChannelResponse (Maybe Bool)
avscHasCredential = lens _avscHasCredential (\ s a -> s{_avscHasCredential = a})

instance FromJSON APNSVoipSandboxChannelResponse
         where
        parseJSON
          = withObject "APNSVoipSandboxChannelResponse"
              (\ x ->
                 APNSVoipSandboxChannelResponse' <$>
                   (x .:? "Platform") <*> (x .:? "LastModifiedDate") <*>
                     (x .:? "Enabled")
                     <*> (x .:? "HasTokenKey")
                     <*> (x .:? "DefaultAuthenticationMethod")
                     <*> (x .:? "IsArchived")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Version")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "LastModifiedBy")
                     <*> (x .:? "HasCredential"))

instance Hashable APNSVoipSandboxChannelResponse
         where

instance NFData APNSVoipSandboxChannelResponse where
