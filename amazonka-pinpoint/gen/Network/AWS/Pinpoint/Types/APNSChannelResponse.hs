{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.APNSChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Apple Distribution Push Notification Service channel definition.
--
-- /See:/ 'apnsChannelResponse' smart constructor.
data APNSChannelResponse = APNSChannelResponse'{_acPlatform
                                                :: !(Maybe Text),
                                                _acLastModifiedDate ::
                                                !(Maybe Text),
                                                _acEnabled :: !(Maybe Bool),
                                                _acHasTokenKey :: !(Maybe Bool),
                                                _acDefaultAuthenticationMethod
                                                :: !(Maybe Text),
                                                _acIsArchived :: !(Maybe Bool),
                                                _acApplicationId ::
                                                !(Maybe Text),
                                                _acVersion :: !(Maybe Int),
                                                _acId :: !(Maybe Text),
                                                _acCreationDate ::
                                                !(Maybe Text),
                                                _acLastModifiedBy ::
                                                !(Maybe Text),
                                                _acHasCredential ::
                                                !(Maybe Bool)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APNSChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acPlatform' - The platform type. Will be APNS.
--
-- * 'acLastModifiedDate' - Last date this was updated
--
-- * 'acEnabled' - If the channel is enabled for sending messages.
--
-- * 'acHasTokenKey' - Indicates whether the channel is configured with a key for APNs token authentication. Provide a token key by setting the TokenKey attribute.
--
-- * 'acDefaultAuthenticationMethod' - The default authentication method used for APNs.
--
-- * 'acIsArchived' - Is this channel archived
--
-- * 'acApplicationId' - The ID of the application to which the channel applies.
--
-- * 'acVersion' - Version of channel
--
-- * 'acId' - Channel ID. Not used. Present only for backwards compatibility.
--
-- * 'acCreationDate' - When was this segment created
--
-- * 'acLastModifiedBy' - Who last updated this entry
--
-- * 'acHasCredential' - Indicates whether the channel is configured with APNs credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with APNs. To use APNs token authentication, set the BundleId, TeamId, TokenKey, and TokenKeyId attributes. To use certificate authentication, set the Certificate and PrivateKey attributes.
apnsChannelResponse
    :: APNSChannelResponse
apnsChannelResponse
  = APNSChannelResponse'{_acPlatform = Nothing,
                         _acLastModifiedDate = Nothing, _acEnabled = Nothing,
                         _acHasTokenKey = Nothing,
                         _acDefaultAuthenticationMethod = Nothing,
                         _acIsArchived = Nothing, _acApplicationId = Nothing,
                         _acVersion = Nothing, _acId = Nothing,
                         _acCreationDate = Nothing,
                         _acLastModifiedBy = Nothing,
                         _acHasCredential = Nothing}

-- | The platform type. Will be APNS.
acPlatform :: Lens' APNSChannelResponse (Maybe Text)
acPlatform = lens _acPlatform (\ s a -> s{_acPlatform = a})

-- | Last date this was updated
acLastModifiedDate :: Lens' APNSChannelResponse (Maybe Text)
acLastModifiedDate = lens _acLastModifiedDate (\ s a -> s{_acLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
acEnabled :: Lens' APNSChannelResponse (Maybe Bool)
acEnabled = lens _acEnabled (\ s a -> s{_acEnabled = a})

-- | Indicates whether the channel is configured with a key for APNs token authentication. Provide a token key by setting the TokenKey attribute.
acHasTokenKey :: Lens' APNSChannelResponse (Maybe Bool)
acHasTokenKey = lens _acHasTokenKey (\ s a -> s{_acHasTokenKey = a})

-- | The default authentication method used for APNs.
acDefaultAuthenticationMethod :: Lens' APNSChannelResponse (Maybe Text)
acDefaultAuthenticationMethod = lens _acDefaultAuthenticationMethod (\ s a -> s{_acDefaultAuthenticationMethod = a})

-- | Is this channel archived
acIsArchived :: Lens' APNSChannelResponse (Maybe Bool)
acIsArchived = lens _acIsArchived (\ s a -> s{_acIsArchived = a})

-- | The ID of the application to which the channel applies.
acApplicationId :: Lens' APNSChannelResponse (Maybe Text)
acApplicationId = lens _acApplicationId (\ s a -> s{_acApplicationId = a})

-- | Version of channel
acVersion :: Lens' APNSChannelResponse (Maybe Int)
acVersion = lens _acVersion (\ s a -> s{_acVersion = a})

-- | Channel ID. Not used. Present only for backwards compatibility.
acId :: Lens' APNSChannelResponse (Maybe Text)
acId = lens _acId (\ s a -> s{_acId = a})

-- | When was this segment created
acCreationDate :: Lens' APNSChannelResponse (Maybe Text)
acCreationDate = lens _acCreationDate (\ s a -> s{_acCreationDate = a})

-- | Who last updated this entry
acLastModifiedBy :: Lens' APNSChannelResponse (Maybe Text)
acLastModifiedBy = lens _acLastModifiedBy (\ s a -> s{_acLastModifiedBy = a})

-- | Indicates whether the channel is configured with APNs credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with APNs. To use APNs token authentication, set the BundleId, TeamId, TokenKey, and TokenKeyId attributes. To use certificate authentication, set the Certificate and PrivateKey attributes.
acHasCredential :: Lens' APNSChannelResponse (Maybe Bool)
acHasCredential = lens _acHasCredential (\ s a -> s{_acHasCredential = a})

instance FromJSON APNSChannelResponse where
        parseJSON
          = withObject "APNSChannelResponse"
              (\ x ->
                 APNSChannelResponse' <$>
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

instance Hashable APNSChannelResponse where

instance NFData APNSChannelResponse where
