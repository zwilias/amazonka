{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackInstanceSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.StackInstanceSummary where

import Network.AWS.CloudFormation.Types.StackInstanceStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The structure that contains summary information about a stack instance.
--
--
--
-- /See:/ 'stackInstanceSummary' smart constructor.
data StackInstanceSummary = StackInstanceSummary'{_sisStatus
                                                  ::
                                                  !(Maybe StackInstanceStatus),
                                                  _sisAccount :: !(Maybe Text),
                                                  _sisRegion :: !(Maybe Text),
                                                  _sisStatusReason ::
                                                  !(Maybe Text),
                                                  _sisStackId :: !(Maybe Text),
                                                  _sisStackSetId ::
                                                  !(Maybe Text)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StackInstanceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sisStatus' - The status of the stack instance, in terms of its synchronization with its associated stack set.     * @INOPERABLE@ : A @DeleteStackInstances@ operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further @UpdateStackSet@ operations. You might need to perform a @DeleteStackInstances@ operation, with @RetainStacks@ set to @true@ , to delete the stack instance, and then delete the stack manually.     * @OUTDATED@ : The stack isn't currently up to date with the stack set because:     * The associated stack failed during a @CreateStackSet@ or @UpdateStackSet@ operation.      * The stack was part of a @CreateStackSet@ or @UpdateStackSet@ operation that failed or was stopped before the stack was created or updated.      * @CURRENT@ : The stack is currently up to date with the stack set.
--
-- * 'sisAccount' - The name of the AWS account that the stack instance is associated with.
--
-- * 'sisRegion' - The name of the AWS region that the stack instance is associated with.
--
-- * 'sisStatusReason' - The explanation for the specific status code assigned to this stack instance.
--
-- * 'sisStackId' - The ID of the stack instance.
--
-- * 'sisStackSetId' - The name or unique ID of the stack set that the stack instance is associated with.
stackInstanceSummary
    :: StackInstanceSummary
stackInstanceSummary
  = StackInstanceSummary'{_sisStatus = Nothing,
                          _sisAccount = Nothing, _sisRegion = Nothing,
                          _sisStatusReason = Nothing, _sisStackId = Nothing,
                          _sisStackSetId = Nothing}

-- | The status of the stack instance, in terms of its synchronization with its associated stack set.     * @INOPERABLE@ : A @DeleteStackInstances@ operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further @UpdateStackSet@ operations. You might need to perform a @DeleteStackInstances@ operation, with @RetainStacks@ set to @true@ , to delete the stack instance, and then delete the stack manually.     * @OUTDATED@ : The stack isn't currently up to date with the stack set because:     * The associated stack failed during a @CreateStackSet@ or @UpdateStackSet@ operation.      * The stack was part of a @CreateStackSet@ or @UpdateStackSet@ operation that failed or was stopped before the stack was created or updated.      * @CURRENT@ : The stack is currently up to date with the stack set.
sisStatus :: Lens' StackInstanceSummary (Maybe StackInstanceStatus)
sisStatus = lens _sisStatus (\ s a -> s{_sisStatus = a})

-- | The name of the AWS account that the stack instance is associated with.
sisAccount :: Lens' StackInstanceSummary (Maybe Text)
sisAccount = lens _sisAccount (\ s a -> s{_sisAccount = a})

-- | The name of the AWS region that the stack instance is associated with.
sisRegion :: Lens' StackInstanceSummary (Maybe Text)
sisRegion = lens _sisRegion (\ s a -> s{_sisRegion = a})

-- | The explanation for the specific status code assigned to this stack instance.
sisStatusReason :: Lens' StackInstanceSummary (Maybe Text)
sisStatusReason = lens _sisStatusReason (\ s a -> s{_sisStatusReason = a})

-- | The ID of the stack instance.
sisStackId :: Lens' StackInstanceSummary (Maybe Text)
sisStackId = lens _sisStackId (\ s a -> s{_sisStackId = a})

-- | The name or unique ID of the stack set that the stack instance is associated with.
sisStackSetId :: Lens' StackInstanceSummary (Maybe Text)
sisStackSetId = lens _sisStackSetId (\ s a -> s{_sisStackSetId = a})

instance FromXML StackInstanceSummary where
        parseXML x
          = StackInstanceSummary' <$>
              (x .@? "Status") <*> (x .@? "Account") <*>
                (x .@? "Region")
                <*> (x .@? "StatusReason")
                <*> (x .@? "StackId")
                <*> (x .@? "StackSetId")

instance Hashable StackInstanceSummary where

instance NFData StackInstanceSummary where
