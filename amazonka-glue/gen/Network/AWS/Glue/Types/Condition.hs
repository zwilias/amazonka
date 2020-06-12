{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Condition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.Condition where

import Network.AWS.Glue.Types.JobRunState
import Network.AWS.Glue.Types.LogicalOperator
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines a condition under which a trigger fires.
--
--
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition'{_cState ::
                            !(Maybe JobRunState),
                            _cJobName :: !(Maybe Text),
                            _cLogicalOperator :: !(Maybe LogicalOperator)}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cState' - The condition state. Currently, the values supported are SUCCEEDED, STOPPED, TIMEOUT and FAILED.
--
-- * 'cJobName' - The name of the Job to whose JobRuns this condition applies and on which this trigger waits.
--
-- * 'cLogicalOperator' - A logical operator.
condition
    :: Condition
condition
  = Condition'{_cState = Nothing, _cJobName = Nothing,
               _cLogicalOperator = Nothing}

-- | The condition state. Currently, the values supported are SUCCEEDED, STOPPED, TIMEOUT and FAILED.
cState :: Lens' Condition (Maybe JobRunState)
cState = lens _cState (\ s a -> s{_cState = a})

-- | The name of the Job to whose JobRuns this condition applies and on which this trigger waits.
cJobName :: Lens' Condition (Maybe Text)
cJobName = lens _cJobName (\ s a -> s{_cJobName = a})

-- | A logical operator.
cLogicalOperator :: Lens' Condition (Maybe LogicalOperator)
cLogicalOperator = lens _cLogicalOperator (\ s a -> s{_cLogicalOperator = a})

instance FromJSON Condition where
        parseJSON
          = withObject "Condition"
              (\ x ->
                 Condition' <$>
                   (x .:? "State") <*> (x .:? "JobName") <*>
                     (x .:? "LogicalOperator"))

instance Hashable Condition where

instance NFData Condition where

instance ToJSON Condition where
        toJSON Condition'{..}
          = object
              (catMaybes
                 [("State" .=) <$> _cState,
                  ("JobName" .=) <$> _cJobName,
                  ("LogicalOperator" .=) <$> _cLogicalOperator])
