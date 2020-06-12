{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSVoipChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSVoipChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Apple VoIP Push Notification Service channel definition.
--
-- /See:/ 'apnsVoipChannelResponse' smart constructor.
data APNSVoipChannelResponse = APNSVoipChannelResponse'{_avcPlatform
                                                        :: !(Maybe Text),
                                                        _avcLastModifiedDate ::
                                                        !(Maybe Text),
                                                        _avcEnabled ::
                                                        !(Maybe Bool),
                                                        _avcHasTokenKey ::
                                                        !(Maybe Bool),
                                                        _avcDefaultAuthenticationMethod
                                                        :: !(Maybe Text),
                                                        _avcIsArchived ::
                                                        !(Maybe Bool),
                                                        _avcApplicationId ::
                                                        !(Maybe Text),
                                                        _avcVersion ::
                                                        !(Maybe Int),
                                                        _avcId :: !(Maybe Text),
                                                        _avcCreationDate ::
                                                        !(Maybe Text),
                                                        _avcLastModifiedBy ::
                                                        !(Maybe Text),
                                                        _avcHasCredential ::
                                                        !(Maybe Bool)}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'APNSVoipChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avcPlatform' - The platform type. Will be APNS.
--
-- * 'avcLastModifiedDate' - Last date this was updated
--
-- * 'avcEnabled' - If the channel is enabled for sending messages.
--
-- * 'avcHasTokenKey' - If the channel is registered with a token key for authentication.
--
-- * 'avcDefaultAuthenticationMethod' - The default authentication method used for APNs.
--
-- * 'avcIsArchived' - Is this channel archived
--
-- * 'avcApplicationId' - Application id
--
-- * 'avcVersion' - Version of channel
--
-- * 'avcId' - Channel ID. Not used, only for backwards compatibility.
--
-- * 'avcCreationDate' - When was this segment created
--
-- * 'avcLastModifiedBy' - Who made the last change
--
-- * 'avcHasCredential' - If the channel is registered with a credential for authentication.
apnsVoipChannelResponse
    :: APNSVoipChannelResponse
apnsVoipChannelResponse
  = APNSVoipChannelResponse'{_avcPlatform = Nothing,
                             _avcLastModifiedDate = Nothing,
                             _avcEnabled = Nothing, _avcHasTokenKey = Nothing,
                             _avcDefaultAuthenticationMethod = Nothing,
                             _avcIsArchived = Nothing,
                             _avcApplicationId = Nothing, _avcVersion = Nothing,
                             _avcId = Nothing, _avcCreationDate = Nothing,
                             _avcLastModifiedBy = Nothing,
                             _avcHasCredential = Nothing}

-- | The platform type. Will be APNS.
avcPlatform :: Lens' APNSVoipChannelResponse (Maybe Text)
avcPlatform = lens _avcPlatform (\ s a -> s{_avcPlatform = a})

-- | Last date this was updated
avcLastModifiedDate :: Lens' APNSVoipChannelResponse (Maybe Text)
avcLastModifiedDate = lens _avcLastModifiedDate (\ s a -> s{_avcLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
avcEnabled :: Lens' APNSVoipChannelResponse (Maybe Bool)
avcEnabled = lens _avcEnabled (\ s a -> s{_avcEnabled = a})

-- | If the channel is registered with a token key for authentication.
avcHasTokenKey :: Lens' APNSVoipChannelResponse (Maybe Bool)
avcHasTokenKey = lens _avcHasTokenKey (\ s a -> s{_avcHasTokenKey = a})

-- | The default authentication method used for APNs.
avcDefaultAuthenticationMethod :: Lens' APNSVoipChannelResponse (Maybe Text)
avcDefaultAuthenticationMethod = lens _avcDefaultAuthenticationMethod (\ s a -> s{_avcDefaultAuthenticationMethod = a})

-- | Is this channel archived
avcIsArchived :: Lens' APNSVoipChannelResponse (Maybe Bool)
avcIsArchived = lens _avcIsArchived (\ s a -> s{_avcIsArchived = a})

-- | Application id
avcApplicationId :: Lens' APNSVoipChannelResponse (Maybe Text)
avcApplicationId = lens _avcApplicationId (\ s a -> s{_avcApplicationId = a})

-- | Version of channel
avcVersion :: Lens' APNSVoipChannelResponse (Maybe Int)
avcVersion = lens _avcVersion (\ s a -> s{_avcVersion = a})

-- | Channel ID. Not used, only for backwards compatibility.
avcId :: Lens' APNSVoipChannelResponse (Maybe Text)
avcId = lens _avcId (\ s a -> s{_avcId = a})

-- | When was this segment created
avcCreationDate :: Lens' APNSVoipChannelResponse (Maybe Text)
avcCreationDate = lens _avcCreationDate (\ s a -> s{_avcCreationDate = a})

-- | Who made the last change
avcLastModifiedBy :: Lens' APNSVoipChannelResponse (Maybe Text)
avcLastModifiedBy = lens _avcLastModifiedBy (\ s a -> s{_avcLastModifiedBy = a})

-- | If the channel is registered with a credential for authentication.
avcHasCredential :: Lens' APNSVoipChannelResponse (Maybe Bool)
avcHasCredential = lens _avcHasCredential (\ s a -> s{_avcHasCredential = a})

instance FromJSON APNSVoipChannelResponse where
        parseJSON
          = withObject "APNSVoipChannelResponse"
              (\ x ->
                 APNSVoipChannelResponse' <$>
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

instance Hashable APNSVoipChannelResponse where

instance NFData APNSVoipChannelResponse where
