{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetAction
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoTAnalytics.Types.DatasetAction where

import Network.AWS.IoTAnalytics.Types.SqlQueryDatasetAction
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A "DatasetAction" object specifying the query that creates the data set content.
--
--
--
-- /See:/ 'datasetAction' smart constructor.
data DatasetAction = DatasetAction'{_daQueryAction ::
                                    !(Maybe SqlQueryDatasetAction),
                                    _daActionName :: !(Maybe Text)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatasetAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daQueryAction' - An "SqlQueryDatasetAction" object that contains the SQL query to modify the message.
--
-- * 'daActionName' - The name of the data set action.
datasetAction
    :: DatasetAction
datasetAction
  = DatasetAction'{_daQueryAction = Nothing,
                   _daActionName = Nothing}

-- | An "SqlQueryDatasetAction" object that contains the SQL query to modify the message.
daQueryAction :: Lens' DatasetAction (Maybe SqlQueryDatasetAction)
daQueryAction = lens _daQueryAction (\ s a -> s{_daQueryAction = a})

-- | The name of the data set action.
daActionName :: Lens' DatasetAction (Maybe Text)
daActionName = lens _daActionName (\ s a -> s{_daActionName = a})

instance FromJSON DatasetAction where
        parseJSON
          = withObject "DatasetAction"
              (\ x ->
                 DatasetAction' <$>
                   (x .:? "queryAction") <*> (x .:? "actionName"))

instance Hashable DatasetAction where

instance NFData DatasetAction where

instance ToJSON DatasetAction where
        toJSON DatasetAction'{..}
          = object
              (catMaybes
                 [("queryAction" .=) <$> _daQueryAction,
                  ("actionName" .=) <$> _daActionName])
