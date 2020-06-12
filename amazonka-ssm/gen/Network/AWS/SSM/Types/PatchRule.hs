{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchRule
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.PatchRule where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.PatchComplianceLevel
import Network.AWS.SSM.Types.PatchFilterGroup

-- | Defines an approval rule for a patch baseline.
--
--
--
-- /See:/ 'patchRule' smart constructor.
data PatchRule = PatchRule'{_prEnableNonSecurity ::
                            !(Maybe Bool),
                            _prComplianceLevel :: !(Maybe PatchComplianceLevel),
                            _prPatchFilterGroup :: !PatchFilterGroup,
                            _prApproveAfterDays :: !Nat}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PatchRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prEnableNonSecurity' - For instances identified by the approval rule filters, enables a patch baseline to apply non-security updates available in the specified repository. The default value is 'false'. Applies to Linux instances only.
--
-- * 'prComplianceLevel' - A compliance severity level for all approved patches in a patch baseline. Valid compliance severity levels include the following: Unspecified, Critical, High, Medium, Low, and Informational.
--
-- * 'prPatchFilterGroup' - The patch filter group that defines the criteria for the rule.
--
-- * 'prApproveAfterDays' - The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.
patchRule
    :: PatchFilterGroup -- ^ 'prPatchFilterGroup'
    -> Natural -- ^ 'prApproveAfterDays'
    -> PatchRule
patchRule pPatchFilterGroup_ pApproveAfterDays_
  = PatchRule'{_prEnableNonSecurity = Nothing,
               _prComplianceLevel = Nothing,
               _prPatchFilterGroup = pPatchFilterGroup_,
               _prApproveAfterDays = _Nat # pApproveAfterDays_}

-- | For instances identified by the approval rule filters, enables a patch baseline to apply non-security updates available in the specified repository. The default value is 'false'. Applies to Linux instances only.
prEnableNonSecurity :: Lens' PatchRule (Maybe Bool)
prEnableNonSecurity = lens _prEnableNonSecurity (\ s a -> s{_prEnableNonSecurity = a})

-- | A compliance severity level for all approved patches in a patch baseline. Valid compliance severity levels include the following: Unspecified, Critical, High, Medium, Low, and Informational.
prComplianceLevel :: Lens' PatchRule (Maybe PatchComplianceLevel)
prComplianceLevel = lens _prComplianceLevel (\ s a -> s{_prComplianceLevel = a})

-- | The patch filter group that defines the criteria for the rule.
prPatchFilterGroup :: Lens' PatchRule PatchFilterGroup
prPatchFilterGroup = lens _prPatchFilterGroup (\ s a -> s{_prPatchFilterGroup = a})

-- | The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.
prApproveAfterDays :: Lens' PatchRule Natural
prApproveAfterDays = lens _prApproveAfterDays (\ s a -> s{_prApproveAfterDays = a}) . _Nat

instance FromJSON PatchRule where
        parseJSON
          = withObject "PatchRule"
              (\ x ->
                 PatchRule' <$>
                   (x .:? "EnableNonSecurity") <*>
                     (x .:? "ComplianceLevel")
                     <*> (x .: "PatchFilterGroup")
                     <*> (x .: "ApproveAfterDays"))

instance Hashable PatchRule where

instance NFData PatchRule where

instance ToJSON PatchRule where
        toJSON PatchRule'{..}
          = object
              (catMaybes
                 [("EnableNonSecurity" .=) <$> _prEnableNonSecurity,
                  ("ComplianceLevel" .=) <$> _prComplianceLevel,
                  Just ("PatchFilterGroup" .= _prPatchFilterGroup),
                  Just ("ApproveAfterDays" .= _prApproveAfterDays)])
