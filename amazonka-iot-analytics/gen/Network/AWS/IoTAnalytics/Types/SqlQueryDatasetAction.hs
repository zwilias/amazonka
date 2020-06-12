{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.SqlQueryDatasetAction
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoTAnalytics.Types.SqlQueryDatasetAction where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The SQL query to modify the message.
--
--
--
-- /See:/ 'sqlQueryDatasetAction' smart constructor.
newtype SqlQueryDatasetAction = SqlQueryDatasetAction'{_sqdaSqlQuery
                                                       :: Text}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'SqlQueryDatasetAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqdaSqlQuery' - An SQL query string.
sqlQueryDatasetAction
    :: Text -- ^ 'sqdaSqlQuery'
    -> SqlQueryDatasetAction
sqlQueryDatasetAction pSqlQuery_
  = SqlQueryDatasetAction'{_sqdaSqlQuery = pSqlQuery_}

-- | An SQL query string.
sqdaSqlQuery :: Lens' SqlQueryDatasetAction Text
sqdaSqlQuery = lens _sqdaSqlQuery (\ s a -> s{_sqdaSqlQuery = a})

instance FromJSON SqlQueryDatasetAction where
        parseJSON
          = withObject "SqlQueryDatasetAction"
              (\ x -> SqlQueryDatasetAction' <$> (x .: "sqlQuery"))

instance Hashable SqlQueryDatasetAction where

instance NFData SqlQueryDatasetAction where

instance ToJSON SqlQueryDatasetAction where
        toJSON SqlQueryDatasetAction'{..}
          = object
              (catMaybes [Just ("sqlQuery" .= _sqdaSqlQuery)])
