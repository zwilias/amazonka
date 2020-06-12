{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Channel
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.Channel where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.CompressionType
import Network.AWS.SageMaker.Types.DataSource
import Network.AWS.SageMaker.Types.RecordWrapper

-- | A channel is a named input source that training algorithms can consume. 
--
--
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel'{_cRecordWrapperType ::
                        !(Maybe RecordWrapper),
                        _cCompressionType :: !(Maybe CompressionType),
                        _cContentType :: !(Maybe Text),
                        _cChannelName :: !Text, _cDataSource :: !DataSource}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRecordWrapperType' -  Specify RecordIO as the value when input data is in raw format but the training algorithm requires the RecordIO format, in which caseAmazon SageMaker wraps each individual S3 object in a RecordIO record. If the input data is already in RecordIO format, you don't need to set this attribute. For more information, see <https://mxnet.incubator.apache.org/how_to/recordio.html?highlight=im2rec Create a Dataset Using RecordIO> .  In FILE mode, leave this field unset or set it to None.
--
-- * 'cCompressionType' - If training data is compressed, the compression type. The default value is @None@ . @CompressionType@ is used only in PIPE input mode. In FILE mode, leave this field unset or set it to None.
--
-- * 'cContentType' - The MIME type of the data.
--
-- * 'cChannelName' - The name of the channel. 
--
-- * 'cDataSource' - The location of the channel data.
channel
    :: Text -- ^ 'cChannelName'
    -> DataSource -- ^ 'cDataSource'
    -> Channel
channel pChannelName_ pDataSource_
  = Channel'{_cRecordWrapperType = Nothing,
             _cCompressionType = Nothing, _cContentType = Nothing,
             _cChannelName = pChannelName_,
             _cDataSource = pDataSource_}

-- |  Specify RecordIO as the value when input data is in raw format but the training algorithm requires the RecordIO format, in which caseAmazon SageMaker wraps each individual S3 object in a RecordIO record. If the input data is already in RecordIO format, you don't need to set this attribute. For more information, see <https://mxnet.incubator.apache.org/how_to/recordio.html?highlight=im2rec Create a Dataset Using RecordIO> .  In FILE mode, leave this field unset or set it to None.
cRecordWrapperType :: Lens' Channel (Maybe RecordWrapper)
cRecordWrapperType = lens _cRecordWrapperType (\ s a -> s{_cRecordWrapperType = a})

-- | If training data is compressed, the compression type. The default value is @None@ . @CompressionType@ is used only in PIPE input mode. In FILE mode, leave this field unset or set it to None.
cCompressionType :: Lens' Channel (Maybe CompressionType)
cCompressionType = lens _cCompressionType (\ s a -> s{_cCompressionType = a})

-- | The MIME type of the data.
cContentType :: Lens' Channel (Maybe Text)
cContentType = lens _cContentType (\ s a -> s{_cContentType = a})

-- | The name of the channel. 
cChannelName :: Lens' Channel Text
cChannelName = lens _cChannelName (\ s a -> s{_cChannelName = a})

-- | The location of the channel data.
cDataSource :: Lens' Channel DataSource
cDataSource = lens _cDataSource (\ s a -> s{_cDataSource = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ x ->
                 Channel' <$>
                   (x .:? "RecordWrapperType") <*>
                     (x .:? "CompressionType")
                     <*> (x .:? "ContentType")
                     <*> (x .: "ChannelName")
                     <*> (x .: "DataSource"))

instance Hashable Channel where

instance NFData Channel where

instance ToJSON Channel where
        toJSON Channel'{..}
          = object
              (catMaybes
                 [("RecordWrapperType" .=) <$> _cRecordWrapperType,
                  ("CompressionType" .=) <$> _cCompressionType,
                  ("ContentType" .=) <$> _cContentType,
                  Just ("ChannelName" .= _cChannelName),
                  Just ("DataSource" .= _cDataSource)])
