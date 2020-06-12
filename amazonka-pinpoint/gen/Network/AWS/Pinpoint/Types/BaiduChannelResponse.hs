{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.BaiduChannelResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.BaiduChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Baidu Cloud Messaging channel definition
--
-- /See:/ 'baiduChannelResponse' smart constructor.
data BaiduChannelResponse = BaiduChannelResponse'{_bcPlatform
                                                  :: !(Maybe Text),
                                                  _bcLastModifiedDate ::
                                                  !(Maybe Text),
                                                  _bcEnabled :: !(Maybe Bool),
                                                  _bcCredential ::
                                                  !(Maybe Text),
                                                  _bcIsArchived ::
                                                  !(Maybe Bool),
                                                  _bcApplicationId ::
                                                  !(Maybe Text),
                                                  _bcVersion :: !(Maybe Int),
                                                  _bcId :: !(Maybe Text),
                                                  _bcCreationDate ::
                                                  !(Maybe Text),
                                                  _bcLastModifiedBy ::
                                                  !(Maybe Text),
                                                  _bcHasCredential ::
                                                  !(Maybe Bool)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BaiduChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcPlatform' - The platform type. Will be BAIDU
--
-- * 'bcLastModifiedDate' - Last date this was updated
--
-- * 'bcEnabled' - If the channel is enabled for sending messages.
--
-- * 'bcCredential' - The Baidu API key from Baidu.
--
-- * 'bcIsArchived' - Is this channel archived
--
-- * 'bcApplicationId' - Application id
--
-- * 'bcVersion' - Version of channel
--
-- * 'bcId' - Channel ID. Not used, only for backwards compatibility.
--
-- * 'bcCreationDate' - When was this segment created
--
-- * 'bcLastModifiedBy' - Who made the last change
--
-- * 'bcHasCredential' - Indicates whether the channel is configured with Baidu Cloud Push credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with Baidu Cloud Push. Provide your credentials by setting the ApiKey and SecretKey attributes.
baiduChannelResponse
    :: BaiduChannelResponse
baiduChannelResponse
  = BaiduChannelResponse'{_bcPlatform = Nothing,
                          _bcLastModifiedDate = Nothing, _bcEnabled = Nothing,
                          _bcCredential = Nothing, _bcIsArchived = Nothing,
                          _bcApplicationId = Nothing, _bcVersion = Nothing,
                          _bcId = Nothing, _bcCreationDate = Nothing,
                          _bcLastModifiedBy = Nothing,
                          _bcHasCredential = Nothing}

-- | The platform type. Will be BAIDU
bcPlatform :: Lens' BaiduChannelResponse (Maybe Text)
bcPlatform = lens _bcPlatform (\ s a -> s{_bcPlatform = a})

-- | Last date this was updated
bcLastModifiedDate :: Lens' BaiduChannelResponse (Maybe Text)
bcLastModifiedDate = lens _bcLastModifiedDate (\ s a -> s{_bcLastModifiedDate = a})

-- | If the channel is enabled for sending messages.
bcEnabled :: Lens' BaiduChannelResponse (Maybe Bool)
bcEnabled = lens _bcEnabled (\ s a -> s{_bcEnabled = a})

-- | The Baidu API key from Baidu.
bcCredential :: Lens' BaiduChannelResponse (Maybe Text)
bcCredential = lens _bcCredential (\ s a -> s{_bcCredential = a})

-- | Is this channel archived
bcIsArchived :: Lens' BaiduChannelResponse (Maybe Bool)
bcIsArchived = lens _bcIsArchived (\ s a -> s{_bcIsArchived = a})

-- | Application id
bcApplicationId :: Lens' BaiduChannelResponse (Maybe Text)
bcApplicationId = lens _bcApplicationId (\ s a -> s{_bcApplicationId = a})

-- | Version of channel
bcVersion :: Lens' BaiduChannelResponse (Maybe Int)
bcVersion = lens _bcVersion (\ s a -> s{_bcVersion = a})

-- | Channel ID. Not used, only for backwards compatibility.
bcId :: Lens' BaiduChannelResponse (Maybe Text)
bcId = lens _bcId (\ s a -> s{_bcId = a})

-- | When was this segment created
bcCreationDate :: Lens' BaiduChannelResponse (Maybe Text)
bcCreationDate = lens _bcCreationDate (\ s a -> s{_bcCreationDate = a})

-- | Who made the last change
bcLastModifiedBy :: Lens' BaiduChannelResponse (Maybe Text)
bcLastModifiedBy = lens _bcLastModifiedBy (\ s a -> s{_bcLastModifiedBy = a})

-- | Indicates whether the channel is configured with Baidu Cloud Push credentials. Amazon Pinpoint uses your credentials to authenticate push notifications with Baidu Cloud Push. Provide your credentials by setting the ApiKey and SecretKey attributes.
bcHasCredential :: Lens' BaiduChannelResponse (Maybe Bool)
bcHasCredential = lens _bcHasCredential (\ s a -> s{_bcHasCredential = a})

instance FromJSON BaiduChannelResponse where
        parseJSON
          = withObject "BaiduChannelResponse"
              (\ x ->
                 BaiduChannelResponse' <$>
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

instance Hashable BaiduChannelResponse where

instance NFData BaiduChannelResponse where
