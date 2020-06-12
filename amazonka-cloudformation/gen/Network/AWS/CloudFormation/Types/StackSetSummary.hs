{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.StackSetSummary where

import Network.AWS.CloudFormation.Types.StackSetStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The structures that contain summary information about the specified stack set.
--
--
--
-- /See:/ 'stackSetSummary' smart constructor.
data StackSetSummary = StackSetSummary'{_sssStatus ::
                                        !(Maybe StackSetStatus),
                                        _sssStackSetName :: !(Maybe Text),
                                        _sssDescription :: !(Maybe Text),
                                        _sssStackSetId :: !(Maybe Text)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StackSetSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssStatus' - The status of the stack set.
--
-- * 'sssStackSetName' - The name of the stack set.
--
-- * 'sssDescription' - A description of the stack set that you specify when the stack set is created or updated.
--
-- * 'sssStackSetId' - The ID of the stack set.
stackSetSummary
    :: StackSetSummary
stackSetSummary
  = StackSetSummary'{_sssStatus = Nothing,
                     _sssStackSetName = Nothing,
                     _sssDescription = Nothing, _sssStackSetId = Nothing}

-- | The status of the stack set.
sssStatus :: Lens' StackSetSummary (Maybe StackSetStatus)
sssStatus = lens _sssStatus (\ s a -> s{_sssStatus = a})

-- | The name of the stack set.
sssStackSetName :: Lens' StackSetSummary (Maybe Text)
sssStackSetName = lens _sssStackSetName (\ s a -> s{_sssStackSetName = a})

-- | A description of the stack set that you specify when the stack set is created or updated.
sssDescription :: Lens' StackSetSummary (Maybe Text)
sssDescription = lens _sssDescription (\ s a -> s{_sssDescription = a})

-- | The ID of the stack set.
sssStackSetId :: Lens' StackSetSummary (Maybe Text)
sssStackSetId = lens _sssStackSetId (\ s a -> s{_sssStackSetId = a})

instance FromXML StackSetSummary where
        parseXML x
          = StackSetSummary' <$>
              (x .@? "Status") <*> (x .@? "StackSetName") <*>
                (x .@? "Description")
                <*> (x .@? "StackSetId")

instance Hashable StackSetSummary where

instance NFData StackSetSummary where
