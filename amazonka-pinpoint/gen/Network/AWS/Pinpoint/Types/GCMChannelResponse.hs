{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.GCMChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.GCMChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Google Cloud Messaging channel definition
--
-- /See:/ 'gcmChannelResponse' smart constructor.
data GCMChannelResponse = GCMChannelResponse'{_gcPlatform
                                              :: !(Maybe Text),
                                              _gcLastModifiedDate ::
                                              !(Maybe Text),
                                              _gcEnabled :: !(Maybe Bool),
                                              _gcCredential :: !(Maybe Text),
                                              _gcIsArchived :: !(Maybe Bool),
                                              _gcApplicationId :: !(Maybe Text),
                                              _gcVersion :: !(Maybe Int),
                                              _gcId :: !(Maybe Text),
                                              _gcCreationDate :: !(Maybe Text),
                                              _gcLastModifiedBy ::
                                              !(Maybe Text),
                                              _gcHasCredential :: !(Maybe Bool)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GCMChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcPlatform' - The platform type. Will be GCM
--
-- * 'gcLastModifiedDate' - Last date this was updated
--
-- * 'gcEnabled' - If the channel is enabled for sending messages.
--
-- * 'gcCredential' - The GCM API key from Google.
--
-- * 'gcIsArchived' - Is this channel archived
--
-- * 'gcApplicationId' - The ID of the application to which the channel applies.
--
-- * 'gcVersion' - Version of channel
--
-- * 'gcId' - Channel ID. Not used. Present only for backwards compatibility.
--
-- * 'gcCreationDate' - When was this segment created
--
-- * 'gcLastModifiedBy' - Who last updated this entry
--
-- * 'gcHasCredential' - Indicates whether the channel is configured with FCM or GCM credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with FCM or GCM. Provide your credentials by setting the ApiKey attribute.
gcmChannelResponse
    :: GCMChannelResponse
gcmChannelResponse
  = GCMChannelResponse'{_gcPlatform = Nothing,
                        _gcLastModifiedDate = Nothing, _gcEnabled = Nothing,
                        _gcCredential = Nothing, _gcIsArchived = Nothing,
                        _gcApplicationId = Nothing, _gcVersion = Nothing,
                        _gcId = Nothing, _gcCreationDate = Nothing,
                        _gcLastModifiedBy = Nothing,
                        _gcHasCredential = Nothing}

-- | The platform type. Will be GCM
gcPlatform :: Lens' GCMChannelResponse (Maybe Text)
gcPlatform = lens _gcPlatform (\ s a -> s{_gcPlatform = a})

-- | Last date this was updated
gcLastModifiedDate :: Lens' GCMChannelResponse (Maybe Text)
gcLastModifiedDate = lens _gcLastModifiedDate (\ s a -> s{_gcLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
gcEnabled :: Lens' GCMChannelResponse (Maybe Bool)
gcEnabled = lens _gcEnabled (\ s a -> s{_gcEnabled = a})

-- | The GCM API key from Google.
gcCredential :: Lens' GCMChannelResponse (Maybe Text)
gcCredential = lens _gcCredential (\ s a -> s{_gcCredential = a})

-- | Is this channel archived
gcIsArchived :: Lens' GCMChannelResponse (Maybe Bool)
gcIsArchived = lens _gcIsArchived (\ s a -> s{_gcIsArchived = a})

-- | The ID of the application to which the channel applies.
gcApplicationId :: Lens' GCMChannelResponse (Maybe Text)
gcApplicationId = lens _gcApplicationId (\ s a -> s{_gcApplicationId = a})

-- | Version of channel
gcVersion :: Lens' GCMChannelResponse (Maybe Int)
gcVersion = lens _gcVersion (\ s a -> s{_gcVersion = a})

-- | Channel ID. Not used. Present only for backwards compatibility.
gcId :: Lens' GCMChannelResponse (Maybe Text)
gcId = lens _gcId (\ s a -> s{_gcId = a})

-- | When was this segment created
gcCreationDate :: Lens' GCMChannelResponse (Maybe Text)
gcCreationDate = lens _gcCreationDate (\ s a -> s{_gcCreationDate = a})

-- | Who last updated this entry
gcLastModifiedBy :: Lens' GCMChannelResponse (Maybe Text)
gcLastModifiedBy = lens _gcLastModifiedBy (\ s a -> s{_gcLastModifiedBy = a})

-- | Indicates whether the channel is configured with FCM or GCM credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with FCM or GCM. Provide your credentials by setting the ApiKey attribute.
gcHasCredential :: Lens' GCMChannelResponse (Maybe Bool)
gcHasCredential = lens _gcHasCredential (\ s a -> s{_gcHasCredential = a})

instance FromJSON GCMChannelResponse where
        parseJSON
          = withObject "GCMChannelResponse"
              (\ x ->
                 GCMChannelResponse' <$>
                   (x .:? "Platform") <*> (x .:? "LastModifiedDate") <*>
                     (x .:? "Enabled")
                     <*> (x .:? "Credential")
                     <*> (x .:? "IsArchived")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Version")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "LastModifiedBy")
                     <*> (x .:? "HasCredential"))

instance Hashable GCMChannelResponse where

instance NFData GCMChannelResponse where
