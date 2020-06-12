{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SMSChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SMSChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | SMS Channel Response.
--
-- /See:/ 'sMSChannelResponse' smart constructor.
data SMSChannelResponse = SMSChannelResponse'{_smscPlatform
                                              :: !(Maybe Text),
                                              _smscShortCode :: !(Maybe Text),
                                              _smscLastModifiedDate ::
                                              !(Maybe Text),
                                              _smscEnabled :: !(Maybe Bool),
                                              _smscSenderId :: !(Maybe Text),
                                              _smscIsArchived :: !(Maybe Bool),
                                              _smscApplicationId ::
                                              !(Maybe Text),
                                              _smscVersion :: !(Maybe Int),
                                              _smscId :: !(Maybe Text),
                                              _smscCreationDate ::
                                              !(Maybe Text),
                                              _smscLastModifiedBy ::
                                              !(Maybe Text),
                                              _smscHasCredential ::
                                              !(Maybe Bool)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SMSChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smscPlatform' - Platform type. Will be "SMS"
--
-- * 'smscShortCode' - The short code registered with the phone provider.
--
-- * 'smscLastModifiedDate' - Last date this was updated
--
-- * 'smscEnabled' - If the channel is enabled for sending messages.
--
-- * 'smscSenderId' - Sender identifier of your messages.
--
-- * 'smscIsArchived' - Is this channel archived
--
-- * 'smscApplicationId' - The unique ID of the application to which the SMS channel belongs.
--
-- * 'smscVersion' - Version of channel
--
-- * 'smscId' - Channel ID. Not used, only for backwards compatibility.
--
-- * 'smscCreationDate' - The date that the settings were last updated in ISO 8601 format.
--
-- * 'smscLastModifiedBy' - Who last updated this entry
--
-- * 'smscHasCredential' - If the channel is registered with a credential for authentication.
sMSChannelResponse
    :: SMSChannelResponse
sMSChannelResponse
  = SMSChannelResponse'{_smscPlatform = Nothing,
                        _smscShortCode = Nothing,
                        _smscLastModifiedDate = Nothing,
                        _smscEnabled = Nothing, _smscSenderId = Nothing,
                        _smscIsArchived = Nothing,
                        _smscApplicationId = Nothing, _smscVersion = Nothing,
                        _smscId = Nothing, _smscCreationDate = Nothing,
                        _smscLastModifiedBy = Nothing,
                        _smscHasCredential = Nothing}

-- | Platform type. Will be "SMS"
smscPlatform :: Lens' SMSChannelResponse (Maybe Text)
smscPlatform = lens _smscPlatform (\ s a -> s{_smscPlatform = a})

-- | The short code registered with the phone provider.
smscShortCode :: Lens' SMSChannelResponse (Maybe Text)
smscShortCode = lens _smscShortCode (\ s a -> s{_smscShortCode = a})

-- | Last date this was updated
smscLastModifiedDate :: Lens' SMSChannelResponse (Maybe Text)
smscLastModifiedDate = lens _smscLastModifiedDate (\ s a -> s{_smscLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
smscEnabled :: Lens' SMSChannelResponse (Maybe Bool)
smscEnabled = lens _smscEnabled (\ s a -> s{_smscEnabled = a})

-- | Sender identifier of your messages.
smscSenderId :: Lens' SMSChannelResponse (Maybe Text)
smscSenderId = lens _smscSenderId (\ s a -> s{_smscSenderId = a})

-- | Is this channel archived
smscIsArchived :: Lens' SMSChannelResponse (Maybe Bool)
smscIsArchived = lens _smscIsArchived (\ s a -> s{_smscIsArchived = a})

-- | The unique ID of the application to which the SMS channel belongs.
smscApplicationId :: Lens' SMSChannelResponse (Maybe Text)
smscApplicationId = lens _smscApplicationId (\ s a -> s{_smscApplicationId = a})

-- | Version of channel
smscVersion :: Lens' SMSChannelResponse (Maybe Int)
smscVersion = lens _smscVersion (\ s a -> s{_smscVersion = a})

-- | Channel ID. Not used, only for backwards compatibility.
smscId :: Lens' SMSChannelResponse (Maybe Text)
smscId = lens _smscId (\ s a -> s{_smscId = a})

-- | The date that the settings were last updated in ISO 8601 format.
smscCreationDate :: Lens' SMSChannelResponse (Maybe Text)
smscCreationDate = lens _smscCreationDate (\ s a -> s{_smscCreationDate = a})

-- | Who last updated this entry
smscLastModifiedBy :: Lens' SMSChannelResponse (Maybe Text)
smscLastModifiedBy = lens _smscLastModifiedBy (\ s a -> s{_smscLastModifiedBy = a})

-- | If the channel is registered with a credential for authentication.
smscHasCredential :: Lens' SMSChannelResponse (Maybe Bool)
smscHasCredential = lens _smscHasCredential (\ s a -> s{_smscHasCredential = a})

instance FromJSON SMSChannelResponse where
        parseJSON
          = withObject "SMSChannelResponse"
              (\ x ->
                 SMSChannelResponse' <$>
                   (x .:? "Platform") <*> (x .:? "ShortCode") <*>
                     (x .:? "LastModifiedDate")
                     <*> (x .:? "Enabled")
                     <*> (x .:? "SenderId")
                     <*> (x .:? "IsArchived")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Version")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "LastModifiedBy")
                     <*> (x .:? "HasCredential"))

instance Hashable SMSChannelResponse where

instance NFData SMSChannelResponse where
