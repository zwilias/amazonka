{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.Dataset
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoTAnalytics.Types.Dataset where

import Network.AWS.IoTAnalytics.Types.DatasetAction
import Network.AWS.IoTAnalytics.Types.DatasetStatus
import Network.AWS.IoTAnalytics.Types.DatasetTrigger
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a data set.
--
--
--
-- /See:/ 'dataset' smart constructor.
data Dataset = Dataset'{_dCreationTime ::
                        !(Maybe POSIX),
                        _dStatus :: !(Maybe DatasetStatus),
                        _dArn :: !(Maybe Text),
                        _dActions :: !(Maybe (List1 DatasetAction)),
                        _dTriggers :: !(Maybe [DatasetTrigger]),
                        _dName :: !(Maybe Text),
                        _dLastUpdateTime :: !(Maybe POSIX)}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Dataset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCreationTime' - When the data set was created.
--
-- * 'dStatus' - The status of the data set.
--
-- * 'dArn' - The ARN of the data set.
--
-- * 'dActions' - The "DatasetAction" objects that create the data set.
--
-- * 'dTriggers' - The "DatasetTrigger" objects that specify when the data set is automatically updated.
--
-- * 'dName' - The name of the data set.
--
-- * 'dLastUpdateTime' - The last time the data set was updated.
dataset
    :: Dataset
dataset
  = Dataset'{_dCreationTime = Nothing,
             _dStatus = Nothing, _dArn = Nothing,
             _dActions = Nothing, _dTriggers = Nothing,
             _dName = Nothing, _dLastUpdateTime = Nothing}

-- | When the data set was created.
dCreationTime :: Lens' Dataset (Maybe UTCTime)
dCreationTime = lens _dCreationTime (\ s a -> s{_dCreationTime = a}) . mapping _Time

-- | The status of the data set.
dStatus :: Lens' Dataset (Maybe DatasetStatus)
dStatus = lens _dStatus (\ s a -> s{_dStatus = a})

-- | The ARN of the data set.
dArn :: Lens' Dataset (Maybe Text)
dArn = lens _dArn (\ s a -> s{_dArn = a})

-- | The "DatasetAction" objects that create the data set.
dActions :: Lens' Dataset (Maybe (NonEmpty DatasetAction))
dActions = lens _dActions (\ s a -> s{_dActions = a}) . mapping _List1

-- | The "DatasetTrigger" objects that specify when the data set is automatically updated.
dTriggers :: Lens' Dataset [DatasetTrigger]
dTriggers = lens _dTriggers (\ s a -> s{_dTriggers = a}) . _Default . _Coerce

-- | The name of the data set.
dName :: Lens' Dataset (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The last time the data set was updated.
dLastUpdateTime :: Lens' Dataset (Maybe UTCTime)
dLastUpdateTime = lens _dLastUpdateTime (\ s a -> s{_dLastUpdateTime = a}) . mapping _Time

instance FromJSON Dataset where
        parseJSON
          = withObject "Dataset"
              (\ x ->
                 Dataset' <$>
                   (x .:? "creationTime") <*> (x .:? "status") <*>
                     (x .:? "arn")
                     <*> (x .:? "actions")
                     <*> (x .:? "triggers" .!= mempty)
                     <*> (x .:? "name")
                     <*> (x .:? "lastUpdateTime"))

instance Hashable Dataset where

instance NFData Dataset where
