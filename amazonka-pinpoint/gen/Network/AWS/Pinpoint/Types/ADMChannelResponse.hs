{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ADMChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ADMChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Amazon Device Messaging channel definition.
--
-- /See:/ 'aDMChannelResponse' smart constructor.
data ADMChannelResponse = ADMChannelResponse'{_admcPlatform
                                              :: !(Maybe Text),
                                              _admcLastModifiedDate ::
                                              !(Maybe Text),
                                              _admcEnabled :: !(Maybe Bool),
                                              _admcIsArchived :: !(Maybe Bool),
                                              _admcApplicationId ::
                                              !(Maybe Text),
                                              _admcVersion :: !(Maybe Int),
                                              _admcId :: !(Maybe Text),
                                              _admcCreationDate ::
                                              !(Maybe Text),
                                              _admcLastModifiedBy ::
                                              !(Maybe Text),
                                              _admcHasCredential ::
                                              !(Maybe Bool)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ADMChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admcPlatform' - Platform type. Will be "ADM"
--
-- * 'admcLastModifiedDate' - Last date this was updated
--
-- * 'admcEnabled' - If the channel is enabled for sending messages.
--
-- * 'admcIsArchived' - Is this channel archived
--
-- * 'admcApplicationId' - The ID of the application to which the channel applies.
--
-- * 'admcVersion' - Version of channel
--
-- * 'admcId' - Channel ID. Not used, only for backwards compatibility.
--
-- * 'admcCreationDate' - When was this segment created
--
-- * 'admcLastModifiedBy' - Who last updated this entry
--
-- * 'admcHasCredential' - Indicates whether the channel is configured with ADM credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with ADM. Provide your credentials by setting the ClientId and ClientSecret attributes.
aDMChannelResponse
    :: ADMChannelResponse
aDMChannelResponse
  = ADMChannelResponse'{_admcPlatform = Nothing,
                        _admcLastModifiedDate = Nothing,
                        _admcEnabled = Nothing, _admcIsArchived = Nothing,
                        _admcApplicationId = Nothing, _admcVersion = Nothing,
                        _admcId = Nothing, _admcCreationDate = Nothing,
                        _admcLastModifiedBy = Nothing,
                        _admcHasCredential = Nothing}

-- | Platform type. Will be "ADM"
admcPlatform :: Lens' ADMChannelResponse (Maybe Text)
admcPlatform = lens _admcPlatform (\ s a -> s{_admcPlatform = a})

-- | Last date this was updated
admcLastModifiedDate :: Lens' ADMChannelResponse (Maybe Text)
admcLastModifiedDate = lens _admcLastModifiedDate (\ s a -> s{_admcLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
admcEnabled :: Lens' ADMChannelResponse (Maybe Bool)
admcEnabled = lens _admcEnabled (\ s a -> s{_admcEnabled = a})

-- | Is this channel archived
admcIsArchived :: Lens' ADMChannelResponse (Maybe Bool)
admcIsArchived = lens _admcIsArchived (\ s a -> s{_admcIsArchived = a})

-- | The ID of the application to which the channel applies.
admcApplicationId :: Lens' ADMChannelResponse (Maybe Text)
admcApplicationId = lens _admcApplicationId (\ s a -> s{_admcApplicationId = a})

-- | Version of channel
admcVersion :: Lens' ADMChannelResponse (Maybe Int)
admcVersion = lens _admcVersion (\ s a -> s{_admcVersion = a})

-- | Channel ID. Not used, only for backwards compatibility.
admcId :: Lens' ADMChannelResponse (Maybe Text)
admcId = lens _admcId (\ s a -> s{_admcId = a})

-- | When was this segment created
admcCreationDate :: Lens' ADMChannelResponse (Maybe Text)
admcCreationDate = lens _admcCreationDate (\ s a -> s{_admcCreationDate = a})

-- | Who last updated this entry
admcLastModifiedBy :: Lens' ADMChannelResponse (Maybe Text)
admcLastModifiedBy = lens _admcLastModifiedBy (\ s a -> s{_admcLastModifiedBy = a})

-- | Indicates whether the channel is configured with ADM credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with ADM. Provide your credentials by setting the ClientId and ClientSecret attributes.
admcHasCredential :: Lens' ADMChannelResponse (Maybe Bool)
admcHasCredential = lens _admcHasCredential (\ s a -> s{_admcHasCredential = a})

instance FromJSON ADMChannelResponse where
        parseJSON
          = withObject "ADMChannelResponse"
              (\ x ->
                 ADMChannelResponse' <$>
                   (x .:? "Platform") <*> (x .:? "LastModifiedDate") <*>
                     (x .:? "Enabled")
                     <*> (x .:? "IsArchived")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Version")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "LastModifiedBy")
                     <*> (x .:? "HasCredential"))

instance Hashable ADMChannelResponse where

instance NFData ADMChannelResponse where
