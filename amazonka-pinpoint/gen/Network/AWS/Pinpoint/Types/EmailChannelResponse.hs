{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EmailChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EmailChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Email Channel Response.
--
-- /See:/ 'emailChannelResponse' smart constructor.
data EmailChannelResponse = EmailChannelResponse'{_ecPlatform
                                                  :: !(Maybe Text),
                                                  _ecLastModifiedDate ::
                                                  !(Maybe Text),
                                                  _ecEnabled :: !(Maybe Bool),
                                                  _ecFromAddress ::
                                                  !(Maybe Text),
                                                  _ecIsArchived ::
                                                  !(Maybe Bool),
                                                  _ecApplicationId ::
                                                  !(Maybe Text),
                                                  _ecVersion :: !(Maybe Int),
                                                  _ecId :: !(Maybe Text),
                                                  _ecCreationDate ::
                                                  !(Maybe Text),
                                                  _ecLastModifiedBy ::
                                                  !(Maybe Text),
                                                  _ecIdentity :: !(Maybe Text),
                                                  _ecHasCredential ::
                                                  !(Maybe Bool),
                                                  _ecRoleARN :: !(Maybe Text)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EmailChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecPlatform' - Platform type. Will be "EMAIL"
--
-- * 'ecLastModifiedDate' - Last date this was updated
--
-- * 'ecEnabled' - If the channel is enabled for sending messages.
--
-- * 'ecFromAddress' - The email address used to send emails from.
--
-- * 'ecIsArchived' - Is this channel archived
--
-- * 'ecApplicationId' - The unique ID of the application to which the email channel belongs.
--
-- * 'ecVersion' - Version of channel
--
-- * 'ecId' - Channel ID. Not used, only for backwards compatibility.
--
-- * 'ecCreationDate' - The date that the settings were last updated in ISO 8601 format.
--
-- * 'ecLastModifiedBy' - Who last updated this entry
--
-- * 'ecIdentity' - The ARN of an identity verified with SES.
--
-- * 'ecHasCredential' - If the channel is registered with a credential for authentication.
--
-- * 'ecRoleARN' - The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
emailChannelResponse
    :: EmailChannelResponse
emailChannelResponse
  = EmailChannelResponse'{_ecPlatform = Nothing,
                          _ecLastModifiedDate = Nothing, _ecEnabled = Nothing,
                          _ecFromAddress = Nothing, _ecIsArchived = Nothing,
                          _ecApplicationId = Nothing, _ecVersion = Nothing,
                          _ecId = Nothing, _ecCreationDate = Nothing,
                          _ecLastModifiedBy = Nothing, _ecIdentity = Nothing,
                          _ecHasCredential = Nothing, _ecRoleARN = Nothing}

-- | Platform type. Will be "EMAIL"
ecPlatform :: Lens' EmailChannelResponse (Maybe Text)
ecPlatform = lens _ecPlatform (\ s a -> s{_ecPlatform = a})

-- | Last date this was updated
ecLastModifiedDate :: Lens' EmailChannelResponse (Maybe Text)
ecLastModifiedDate = lens _ecLastModifiedDate (\ s a -> s{_ecLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
ecEnabled :: Lens' EmailChannelResponse (Maybe Bool)
ecEnabled = lens _ecEnabled (\ s a -> s{_ecEnabled = a})

-- | The email address used to send emails from.
ecFromAddress :: Lens' EmailChannelResponse (Maybe Text)
ecFromAddress = lens _ecFromAddress (\ s a -> s{_ecFromAddress = a})

-- | Is this channel archived
ecIsArchived :: Lens' EmailChannelResponse (Maybe Bool)
ecIsArchived = lens _ecIsArchived (\ s a -> s{_ecIsArchived = a})

-- | The unique ID of the application to which the email channel belongs.
ecApplicationId :: Lens' EmailChannelResponse (Maybe Text)
ecApplicationId = lens _ecApplicationId (\ s a -> s{_ecApplicationId = a})

-- | Version of channel
ecVersion :: Lens' EmailChannelResponse (Maybe Int)
ecVersion = lens _ecVersion (\ s a -> s{_ecVersion = a})

-- | Channel ID. Not used, only for backwards compatibility.
ecId :: Lens' EmailChannelResponse (Maybe Text)
ecId = lens _ecId (\ s a -> s{_ecId = a})

-- | The date that the settings were last updated in ISO 8601 format.
ecCreationDate :: Lens' EmailChannelResponse (Maybe Text)
ecCreationDate = lens _ecCreationDate (\ s a -> s{_ecCreationDate = a})

-- | Who last updated this entry
ecLastModifiedBy :: Lens' EmailChannelResponse (Maybe Text)
ecLastModifiedBy = lens _ecLastModifiedBy (\ s a -> s{_ecLastModifiedBy = a})

-- | The ARN of an identity verified with SES.
ecIdentity :: Lens' EmailChannelResponse (Maybe Text)
ecIdentity = lens _ecIdentity (\ s a -> s{_ecIdentity = a})

-- | If the channel is registered with a credential for authentication.
ecHasCredential :: Lens' EmailChannelResponse (Maybe Bool)
ecHasCredential = lens _ecHasCredential (\ s a -> s{_ecHasCredential = a})

-- | The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
ecRoleARN :: Lens' EmailChannelResponse (Maybe Text)
ecRoleARN = lens _ecRoleARN (\ s a -> s{_ecRoleARN = a})

instance FromJSON EmailChannelResponse where
        parseJSON
          = withObject "EmailChannelResponse"
              (\ x ->
                 EmailChannelResponse' <$>
                   (x .:? "Platform") <*> (x .:? "LastModifiedDate") <*>
                     (x .:? "Enabled")
                     <*> (x .:? "FromAddress")
                     <*> (x .:? "IsArchived")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Version")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "LastModifiedBy")
                     <*> (x .:? "Identity")
                     <*> (x .:? "HasCredential")
                     <*> (x .:? "RoleArn"))

instance Hashable EmailChannelResponse where

instance NFData EmailChannelResponse where
