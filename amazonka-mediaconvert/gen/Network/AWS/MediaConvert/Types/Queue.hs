{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Queue
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Queue where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.QueueStatus
import Network.AWS.MediaConvert.Types.Type
import Network.AWS.Prelude

-- | MediaConvert jobs are submitted to a queue. Unless specified otherwise jobs are submitted to a built-in default queue. User can create additional queues to separate the jobs of different categories or priority.
--
-- /See:/ 'queue' smart constructor.
data Queue = Queue'{_qStatus :: !(Maybe QueueStatus),
                    _qLastUpdated :: !(Maybe POSIX),
                    _qARN :: !(Maybe Text),
                    _qCreatedAt :: !(Maybe POSIX),
                    _qName :: !(Maybe Text), _qType :: !(Maybe Type),
                    _qDescription :: !(Maybe Text)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Queue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qStatus' - Undocumented member.
--
-- * 'qLastUpdated' - The timestamp in epoch seconds when the queue was last updated.
--
-- * 'qARN' - An identifier for this resource that is unique within all of AWS.
--
-- * 'qCreatedAt' - The timestamp in epoch seconds for queue creation.
--
-- * 'qName' - A name you create for each queue. Each name must be unique within your account.
--
-- * 'qType' - A queue can be of two types: system or custom. System or built-in queues can't be modified or deleted by the user.
--
-- * 'qDescription' - An optional description you create for each queue.
queue
    :: Queue
queue
  = Queue'{_qStatus = Nothing, _qLastUpdated = Nothing,
           _qARN = Nothing, _qCreatedAt = Nothing,
           _qName = Nothing, _qType = Nothing,
           _qDescription = Nothing}

-- | Undocumented member.
qStatus :: Lens' Queue (Maybe QueueStatus)
qStatus = lens _qStatus (\ s a -> s{_qStatus = a})

-- | The timestamp in epoch seconds when the queue was last updated.
qLastUpdated :: Lens' Queue (Maybe UTCTime)
qLastUpdated = lens _qLastUpdated (\ s a -> s{_qLastUpdated = a}) . mapping _Time

-- | An identifier for this resource that is unique within all of AWS.
qARN :: Lens' Queue (Maybe Text)
qARN = lens _qARN (\ s a -> s{_qARN = a})

-- | The timestamp in epoch seconds for queue creation.
qCreatedAt :: Lens' Queue (Maybe UTCTime)
qCreatedAt = lens _qCreatedAt (\ s a -> s{_qCreatedAt = a}) . mapping _Time

-- | A name you create for each queue. Each name must be unique within your account.
qName :: Lens' Queue (Maybe Text)
qName = lens _qName (\ s a -> s{_qName = a})

-- | A queue can be of two types: system or custom. System or built-in queues can't be modified or deleted by the user.
qType :: Lens' Queue (Maybe Type)
qType = lens _qType (\ s a -> s{_qType = a})

-- | An optional description you create for each queue.
qDescription :: Lens' Queue (Maybe Text)
qDescription = lens _qDescription (\ s a -> s{_qDescription = a})

instance FromJSON Queue where
        parseJSON
          = withObject "Queue"
              (\ x ->
                 Queue' <$>
                   (x .:? "status") <*> (x .:? "lastUpdated") <*>
                     (x .:? "arn")
                     <*> (x .:? "createdAt")
                     <*> (x .:? "name")
                     <*> (x .:? "type")
                     <*> (x .:? "description"))

instance Hashable Queue where

instance NFData Queue where
