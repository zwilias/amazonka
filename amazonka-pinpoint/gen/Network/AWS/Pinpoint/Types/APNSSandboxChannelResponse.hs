{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Apple Development Push Notification Service channel definition.
--
-- /See:/ 'apnsSandboxChannelResponse' smart constructor.
data APNSSandboxChannelResponse = APNSSandboxChannelResponse'{_ascPlatform
                                                              :: !(Maybe Text),
                                                              _ascLastModifiedDate
                                                              :: !(Maybe Text),
                                                              _ascEnabled ::
                                                              !(Maybe Bool),
                                                              _ascHasTokenKey ::
                                                              !(Maybe Bool),
                                                              _ascDefaultAuthenticationMethod
                                                              :: !(Maybe Text),
                                                              _ascIsArchived ::
                                                              !(Maybe Bool),
                                                              _ascApplicationId
                                                              :: !(Maybe Text),
                                                              _ascVersion ::
                                                              !(Maybe Int),
                                                              _ascId ::
                                                              !(Maybe Text),
                                                              _ascCreationDate
                                                              :: !(Maybe Text),
                                                              _ascLastModifiedBy
                                                              :: !(Maybe Text),
                                                              _ascHasCredential
                                                              :: !(Maybe Bool)}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'APNSSandboxChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascPlatform' - The platform type. Will be APNS_SANDBOX.
--
-- * 'ascLastModifiedDate' - Last date this was updated
--
-- * 'ascEnabled' - If the channel is enabled for sending messages.
--
-- * 'ascHasTokenKey' - Indicates whether the channel is configured with a key for APNs token authentication. Provide a token key by setting the TokenKey attribute.
--
-- * 'ascDefaultAuthenticationMethod' - The default authentication method used for APNs.
--
-- * 'ascIsArchived' - Is this channel archived
--
-- * 'ascApplicationId' - The ID of the application to which the channel applies.
--
-- * 'ascVersion' - Version of channel
--
-- * 'ascId' - Channel ID. Not used, only for backwards compatibility.
--
-- * 'ascCreationDate' - When was this segment created
--
-- * 'ascLastModifiedBy' - Who last updated this entry
--
-- * 'ascHasCredential' - Indicates whether the channel is configured with APNs credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with APNs. To use APNs token authentication, set the BundleId, TeamId, TokenKey, and TokenKeyId attributes. To use certificate authentication, set the Certificate and PrivateKey attributes.
apnsSandboxChannelResponse
    :: APNSSandboxChannelResponse
apnsSandboxChannelResponse
  = APNSSandboxChannelResponse'{_ascPlatform = Nothing,
                                _ascLastModifiedDate = Nothing,
                                _ascEnabled = Nothing,
                                _ascHasTokenKey = Nothing,
                                _ascDefaultAuthenticationMethod = Nothing,
                                _ascIsArchived = Nothing,
                                _ascApplicationId = Nothing,
                                _ascVersion = Nothing, _ascId = Nothing,
                                _ascCreationDate = Nothing,
                                _ascLastModifiedBy = Nothing,
                                _ascHasCredential = Nothing}

-- | The platform type. Will be APNS_SANDBOX.
ascPlatform :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascPlatform = lens _ascPlatform (\ s a -> s{_ascPlatform = a})

-- | Last date this was updated
ascLastModifiedDate :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascLastModifiedDate = lens _ascLastModifiedDate (\ s a -> s{_ascLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
ascEnabled :: Lens' APNSSandboxChannelResponse (Maybe Bool)
ascEnabled = lens _ascEnabled (\ s a -> s{_ascEnabled = a})

-- | Indicates whether the channel is configured with a key for APNs token authentication. Provide a token key by setting the TokenKey attribute.
ascHasTokenKey :: Lens' APNSSandboxChannelResponse (Maybe Bool)
ascHasTokenKey = lens _ascHasTokenKey (\ s a -> s{_ascHasTokenKey = a})

-- | The default authentication method used for APNs.
ascDefaultAuthenticationMethod :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascDefaultAuthenticationMethod = lens _ascDefaultAuthenticationMethod (\ s a -> s{_ascDefaultAuthenticationMethod = a})

-- | Is this channel archived
ascIsArchived :: Lens' APNSSandboxChannelResponse (Maybe Bool)
ascIsArchived = lens _ascIsArchived (\ s a -> s{_ascIsArchived = a})

-- | The ID of the application to which the channel applies.
ascApplicationId :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascApplicationId = lens _ascApplicationId (\ s a -> s{_ascApplicationId = a})

-- | Version of channel
ascVersion :: Lens' APNSSandboxChannelResponse (Maybe Int)
ascVersion = lens _ascVersion (\ s a -> s{_ascVersion = a})

-- | Channel ID. Not used, only for backwards compatibility.
ascId :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascId = lens _ascId (\ s a -> s{_ascId = a})

-- | When was this segment created
ascCreationDate :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascCreationDate = lens _ascCreationDate (\ s a -> s{_ascCreationDate = a})

-- | Who last updated this entry
ascLastModifiedBy :: Lens' APNSSandboxChannelResponse (Maybe Text)
ascLastModifiedBy = lens _ascLastModifiedBy (\ s a -> s{_ascLastModifiedBy = a})

-- | Indicates whether the channel is configured with APNs credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with APNs. To use APNs token authentication, set the BundleId, TeamId, TokenKey, and TokenKeyId attributes. To use certificate authentication, set the Certificate and PrivateKey attributes.
ascHasCredential :: Lens' APNSSandboxChannelResponse (Maybe Bool)
ascHasCredential = lens _ascHasCredential (\ s a -> s{_ascHasCredential = a})

instance FromJSON APNSSandboxChannelResponse where
        parseJSON
          = withObject "APNSSandboxChannelResponse"
              (\ x ->
                 APNSSandboxChannelResponse' <$>
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

instance Hashable APNSSandboxChannelResponse where

instance NFData APNSSandboxChannelResponse where
