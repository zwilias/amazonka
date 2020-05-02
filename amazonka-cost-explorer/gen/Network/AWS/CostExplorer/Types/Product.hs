{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CostExplorer.Types.Product where

import Network.AWS.CostExplorer.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The structure of Cost Categories. This includes detailed metadata and the set of rules for the @CostCategory@ object.
--
--
--
-- /See:/ 'costCategory' smart constructor.
data CostCategory =
  CostCategory'
    { _ccEffectiveEnd    :: !(Maybe Text)
    , _ccCostCategoryARN :: !Text
    , _ccEffectiveStart  :: !Text
    , _ccName            :: !Text
    , _ccRuleVersion     :: !CostCategoryRuleVersion
    , _ccRules           :: !(List1 CostCategoryRule)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CostCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccEffectiveEnd' - The Cost Category's effective end date.
--
-- * 'ccCostCategoryARN' - The unique identifier for your Cost Category.
--
-- * 'ccEffectiveStart' - The Cost Category's effective start date.
--
-- * 'ccName' - Undocumented member.
--
-- * 'ccRuleVersion' - Undocumented member.
--
-- * 'ccRules' - Rules are processed in order. If there are multiple rules that match the line item, then the first rule to match is used to determine that Cost Category value.
costCategory
    :: Text -- ^ 'ccCostCategoryARN'
    -> Text -- ^ 'ccEffectiveStart'
    -> Text -- ^ 'ccName'
    -> CostCategoryRuleVersion -- ^ 'ccRuleVersion'
    -> NonEmpty CostCategoryRule -- ^ 'ccRules'
    -> CostCategory
costCategory pCostCategoryARN_ pEffectiveStart_ pName_ pRuleVersion_ pRules_ =
  CostCategory'
    { _ccEffectiveEnd = Nothing
    , _ccCostCategoryARN = pCostCategoryARN_
    , _ccEffectiveStart = pEffectiveStart_
    , _ccName = pName_
    , _ccRuleVersion = pRuleVersion_
    , _ccRules = _List1 # pRules_
    }


-- | The Cost Category's effective end date.
ccEffectiveEnd :: Lens' CostCategory (Maybe Text)
ccEffectiveEnd = lens _ccEffectiveEnd (\ s a -> s{_ccEffectiveEnd = a})

-- | The unique identifier for your Cost Category.
ccCostCategoryARN :: Lens' CostCategory Text
ccCostCategoryARN = lens _ccCostCategoryARN (\ s a -> s{_ccCostCategoryARN = a})

-- | The Cost Category's effective start date.
ccEffectiveStart :: Lens' CostCategory Text
ccEffectiveStart = lens _ccEffectiveStart (\ s a -> s{_ccEffectiveStart = a})

-- | Undocumented member.
ccName :: Lens' CostCategory Text
ccName = lens _ccName (\ s a -> s{_ccName = a})

-- | Undocumented member.
ccRuleVersion :: Lens' CostCategory CostCategoryRuleVersion
ccRuleVersion = lens _ccRuleVersion (\ s a -> s{_ccRuleVersion = a})

-- | Rules are processed in order. If there are multiple rules that match the line item, then the first rule to match is used to determine that Cost Category value.
ccRules :: Lens' CostCategory (NonEmpty CostCategoryRule)
ccRules = lens _ccRules (\ s a -> s{_ccRules = a}) . _List1

instance FromJSON CostCategory where
        parseJSON
          = withObject "CostCategory"
              (\ x ->
                 CostCategory' <$>
                   (x .:? "EffectiveEnd") <*> (x .: "CostCategoryArn")
                     <*> (x .: "EffectiveStart")
                     <*> (x .: "Name")
                     <*> (x .: "RuleVersion")
                     <*> (x .: "Rules"))

instance Hashable CostCategory where

instance NFData CostCategory where

-- | A reference to a Cost Category containing only enough information to identify the Cost Category.
--
--
-- You can use this information to retrieve the full Cost Category information using @DescribeCostCategory@ .
--
--
-- /See:/ 'costCategoryReference' smart constructor.
data CostCategoryReference =
  CostCategoryReference'
    { _ccrEffectiveStart  :: !(Maybe Text)
    , _ccrCostCategoryARN :: !(Maybe Text)
    , _ccrNumberOfRules   :: !(Maybe Nat)
    , _ccrName            :: !(Maybe Text)
    , _ccrEffectiveEnd    :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CostCategoryReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrEffectiveStart' - The Cost Category's effective start date.
--
-- * 'ccrCostCategoryARN' - The unique identifier for your Cost Category.
--
-- * 'ccrNumberOfRules' - The number of rules associated with a specific Cost Category.
--
-- * 'ccrName' - Undocumented member.
--
-- * 'ccrEffectiveEnd' - The Cost Category's effective end date.
costCategoryReference
    :: CostCategoryReference
costCategoryReference =
  CostCategoryReference'
    { _ccrEffectiveStart = Nothing
    , _ccrCostCategoryARN = Nothing
    , _ccrNumberOfRules = Nothing
    , _ccrName = Nothing
    , _ccrEffectiveEnd = Nothing
    }


-- | The Cost Category's effective start date.
ccrEffectiveStart :: Lens' CostCategoryReference (Maybe Text)
ccrEffectiveStart = lens _ccrEffectiveStart (\ s a -> s{_ccrEffectiveStart = a})

-- | The unique identifier for your Cost Category.
ccrCostCategoryARN :: Lens' CostCategoryReference (Maybe Text)
ccrCostCategoryARN = lens _ccrCostCategoryARN (\ s a -> s{_ccrCostCategoryARN = a})

-- | The number of rules associated with a specific Cost Category.
ccrNumberOfRules :: Lens' CostCategoryReference (Maybe Natural)
ccrNumberOfRules = lens _ccrNumberOfRules (\ s a -> s{_ccrNumberOfRules = a}) . mapping _Nat

-- | Undocumented member.
ccrName :: Lens' CostCategoryReference (Maybe Text)
ccrName = lens _ccrName (\ s a -> s{_ccrName = a})

-- | The Cost Category's effective end date.
ccrEffectiveEnd :: Lens' CostCategoryReference (Maybe Text)
ccrEffectiveEnd = lens _ccrEffectiveEnd (\ s a -> s{_ccrEffectiveEnd = a})

instance FromJSON CostCategoryReference where
        parseJSON
          = withObject "CostCategoryReference"
              (\ x ->
                 CostCategoryReference' <$>
                   (x .:? "EffectiveStart") <*>
                     (x .:? "CostCategoryArn")
                     <*> (x .:? "NumberOfRules")
                     <*> (x .:? "Name")
                     <*> (x .:? "EffectiveEnd"))

instance Hashable CostCategoryReference where

instance NFData CostCategoryReference where

-- | Rules are processed in order. If there are multiple rules that match the line item, then the first rule to match is used to determine that Cost Category value.
--
--
--
-- /See:/ 'costCategoryRule' smart constructor.
data CostCategoryRule =
  CostCategoryRule'
    { _ccrValue :: !Text
    , _ccrRule  :: !Expression
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CostCategoryRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrValue' - Undocumented member.
--
-- * 'ccrRule' - An <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object used to categorize costs. This supports dimensions, Tags, and nested expressions. Currently the only dimensions supported are @LINKED_ACCOUNT@ , @SERVICE_CODE@ , @RECORD_TYPE@ , and @LINKED_ACCOUNT_NAME@ . Root level @OR@ is not supported. We recommend that you create a separate rule instead. @RECORD_TYPE@ is a dimension used for Cost Explorer APIs, and is also supported for Cost Category expressions. This dimension uses different terms, depending on whether you're using the console or API/JSON editor. For a detailed comparison, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-cost-categories.html#cost-categories-terms Term Comparisons> in the /AWS Billing and Cost Management User Guide/ .
costCategoryRule
    :: Text -- ^ 'ccrValue'
    -> Expression -- ^ 'ccrRule'
    -> CostCategoryRule
costCategoryRule pValue_ pRule_ =
  CostCategoryRule' {_ccrValue = pValue_, _ccrRule = pRule_}


-- | Undocumented member.
ccrValue :: Lens' CostCategoryRule Text
ccrValue = lens _ccrValue (\ s a -> s{_ccrValue = a})

-- | An <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object used to categorize costs. This supports dimensions, Tags, and nested expressions. Currently the only dimensions supported are @LINKED_ACCOUNT@ , @SERVICE_CODE@ , @RECORD_TYPE@ , and @LINKED_ACCOUNT_NAME@ . Root level @OR@ is not supported. We recommend that you create a separate rule instead. @RECORD_TYPE@ is a dimension used for Cost Explorer APIs, and is also supported for Cost Category expressions. This dimension uses different terms, depending on whether you're using the console or API/JSON editor. For a detailed comparison, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-cost-categories.html#cost-categories-terms Term Comparisons> in the /AWS Billing and Cost Management User Guide/ .
ccrRule :: Lens' CostCategoryRule Expression
ccrRule = lens _ccrRule (\ s a -> s{_ccrRule = a})

instance FromJSON CostCategoryRule where
        parseJSON
          = withObject "CostCategoryRule"
              (\ x ->
                 CostCategoryRule' <$>
                   (x .: "Value") <*> (x .: "Rule"))

instance Hashable CostCategoryRule where

instance NFData CostCategoryRule where

instance ToJSON CostCategoryRule where
        toJSON CostCategoryRule'{..}
          = object
              (catMaybes
                 [Just ("Value" .= _ccrValue),
                  Just ("Rule" .= _ccrRule)])

-- | The Cost Categories values used for filtering the costs.
--
--
--
-- /See:/ 'costCategoryValues' smart constructor.
data CostCategoryValues =
  CostCategoryValues'
    { _ccvValues :: !(Maybe [Text])
    , _ccvKey    :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CostCategoryValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccvValues' - The specific value of the Cost Category.
--
-- * 'ccvKey' - Undocumented member.
costCategoryValues
    :: CostCategoryValues
costCategoryValues =
  CostCategoryValues' {_ccvValues = Nothing, _ccvKey = Nothing}


-- | The specific value of the Cost Category.
ccvValues :: Lens' CostCategoryValues [Text]
ccvValues = lens _ccvValues (\ s a -> s{_ccvValues = a}) . _Default . _Coerce

-- | Undocumented member.
ccvKey :: Lens' CostCategoryValues (Maybe Text)
ccvKey = lens _ccvKey (\ s a -> s{_ccvKey = a})

instance FromJSON CostCategoryValues where
        parseJSON
          = withObject "CostCategoryValues"
              (\ x ->
                 CostCategoryValues' <$>
                   (x .:? "Values" .!= mempty) <*> (x .:? "Key"))

instance Hashable CostCategoryValues where

instance NFData CostCategoryValues where

instance ToJSON CostCategoryValues where
        toJSON CostCategoryValues'{..}
          = object
              (catMaybes
                 [("Values" .=) <$> _ccvValues,
                  ("Key" .=) <$> _ccvKey])

-- | The amount of instance usage that a reservation covered.
--
--
--
-- /See:/ 'coverage' smart constructor.
data Coverage =
  Coverage'
    { _cCoverageNormalizedUnits :: !(Maybe CoverageNormalizedUnits)
    , _cCoverageHours           :: !(Maybe CoverageHours)
    , _cCoverageCost            :: !(Maybe CoverageCost)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Coverage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCoverageNormalizedUnits' - The amount of instance usage that the reservation covered, in normalized units.
--
-- * 'cCoverageHours' - The amount of instance usage that the reservation covered, in hours.
--
-- * 'cCoverageCost' - The amount of cost that the reservation covered.
coverage
    :: Coverage
coverage =
  Coverage'
    { _cCoverageNormalizedUnits = Nothing
    , _cCoverageHours = Nothing
    , _cCoverageCost = Nothing
    }


-- | The amount of instance usage that the reservation covered, in normalized units.
cCoverageNormalizedUnits :: Lens' Coverage (Maybe CoverageNormalizedUnits)
cCoverageNormalizedUnits = lens _cCoverageNormalizedUnits (\ s a -> s{_cCoverageNormalizedUnits = a})

-- | The amount of instance usage that the reservation covered, in hours.
cCoverageHours :: Lens' Coverage (Maybe CoverageHours)
cCoverageHours = lens _cCoverageHours (\ s a -> s{_cCoverageHours = a})

-- | The amount of cost that the reservation covered.
cCoverageCost :: Lens' Coverage (Maybe CoverageCost)
cCoverageCost = lens _cCoverageCost (\ s a -> s{_cCoverageCost = a})

instance FromJSON Coverage where
        parseJSON
          = withObject "Coverage"
              (\ x ->
                 Coverage' <$>
                   (x .:? "CoverageNormalizedUnits") <*>
                     (x .:? "CoverageHours")
                     <*> (x .:? "CoverageCost"))

instance Hashable Coverage where

instance NFData Coverage where

-- | Reservation coverage for a specified period, in hours.
--
--
--
-- /See:/ 'coverageByTime' smart constructor.
data CoverageByTime =
  CoverageByTime'
    { _cbtGroups     :: !(Maybe [ReservationCoverageGroup])
    , _cbtTimePeriod :: !(Maybe DateInterval)
    , _cbtTotal      :: !(Maybe Coverage)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoverageByTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbtGroups' - The groups of instances that the reservation covered.
--
-- * 'cbtTimePeriod' - The period that this coverage was used over.
--
-- * 'cbtTotal' - The total reservation coverage, in hours.
coverageByTime
    :: CoverageByTime
coverageByTime =
  CoverageByTime'
    {_cbtGroups = Nothing, _cbtTimePeriod = Nothing, _cbtTotal = Nothing}


-- | The groups of instances that the reservation covered.
cbtGroups :: Lens' CoverageByTime [ReservationCoverageGroup]
cbtGroups = lens _cbtGroups (\ s a -> s{_cbtGroups = a}) . _Default . _Coerce

-- | The period that this coverage was used over.
cbtTimePeriod :: Lens' CoverageByTime (Maybe DateInterval)
cbtTimePeriod = lens _cbtTimePeriod (\ s a -> s{_cbtTimePeriod = a})

-- | The total reservation coverage, in hours.
cbtTotal :: Lens' CoverageByTime (Maybe Coverage)
cbtTotal = lens _cbtTotal (\ s a -> s{_cbtTotal = a})

instance FromJSON CoverageByTime where
        parseJSON
          = withObject "CoverageByTime"
              (\ x ->
                 CoverageByTime' <$>
                   (x .:? "Groups" .!= mempty) <*> (x .:? "TimePeriod")
                     <*> (x .:? "Total"))

instance Hashable CoverageByTime where

instance NFData CoverageByTime where

-- | How much it costs to run an instance.
--
--
--
-- /See:/ 'coverageCost' smart constructor.
newtype CoverageCost =
  CoverageCost'
    { _ccOnDemandCost :: Maybe Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoverageCost' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccOnDemandCost' - How much an On-Demand Instance costs.
coverageCost
    :: CoverageCost
coverageCost = CoverageCost' {_ccOnDemandCost = Nothing}


-- | How much an On-Demand Instance costs.
ccOnDemandCost :: Lens' CoverageCost (Maybe Text)
ccOnDemandCost = lens _ccOnDemandCost (\ s a -> s{_ccOnDemandCost = a})

instance FromJSON CoverageCost where
        parseJSON
          = withObject "CoverageCost"
              (\ x -> CoverageCost' <$> (x .:? "OnDemandCost"))

instance Hashable CoverageCost where

instance NFData CoverageCost where

-- | How long a running instance either used a reservation or was On-Demand.
--
--
--
-- /See:/ 'coverageHours' smart constructor.
data CoverageHours =
  CoverageHours'
    { _chCoverageHoursPercentage :: !(Maybe Text)
    , _chOnDemandHours           :: !(Maybe Text)
    , _chTotalRunningHours       :: !(Maybe Text)
    , _chReservedHours           :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoverageHours' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chCoverageHoursPercentage' - The percentage of instance hours that a reservation covered.
--
-- * 'chOnDemandHours' - The number of instance running hours that On-Demand Instances covered.
--
-- * 'chTotalRunningHours' - The total instance usage, in hours.
--
-- * 'chReservedHours' - The number of instance running hours that reservations covered.
coverageHours
    :: CoverageHours
coverageHours =
  CoverageHours'
    { _chCoverageHoursPercentage = Nothing
    , _chOnDemandHours = Nothing
    , _chTotalRunningHours = Nothing
    , _chReservedHours = Nothing
    }


-- | The percentage of instance hours that a reservation covered.
chCoverageHoursPercentage :: Lens' CoverageHours (Maybe Text)
chCoverageHoursPercentage = lens _chCoverageHoursPercentage (\ s a -> s{_chCoverageHoursPercentage = a})

-- | The number of instance running hours that On-Demand Instances covered.
chOnDemandHours :: Lens' CoverageHours (Maybe Text)
chOnDemandHours = lens _chOnDemandHours (\ s a -> s{_chOnDemandHours = a})

-- | The total instance usage, in hours.
chTotalRunningHours :: Lens' CoverageHours (Maybe Text)
chTotalRunningHours = lens _chTotalRunningHours (\ s a -> s{_chTotalRunningHours = a})

-- | The number of instance running hours that reservations covered.
chReservedHours :: Lens' CoverageHours (Maybe Text)
chReservedHours = lens _chReservedHours (\ s a -> s{_chReservedHours = a})

instance FromJSON CoverageHours where
        parseJSON
          = withObject "CoverageHours"
              (\ x ->
                 CoverageHours' <$>
                   (x .:? "CoverageHoursPercentage") <*>
                     (x .:? "OnDemandHours")
                     <*> (x .:? "TotalRunningHours")
                     <*> (x .:? "ReservedHours"))

instance Hashable CoverageHours where

instance NFData CoverageHours where

-- | The amount of instance usage, in normalized units. Normalized units enable you to see your EC2 usage for multiple sizes of instances in a uniform way. For example, suppose you run an xlarge instance and a 2xlarge instance. If you run both instances for the same amount of time, the 2xlarge instance uses twice as much of your reservation as the xlarge instance, even though both instances show only one instance-hour. Using normalized units instead of instance-hours, the xlarge instance used 8 normalized units, and the 2xlarge instance used 16 normalized units.
--
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html Modifying Reserved Instances> in the /Amazon Elastic Compute Cloud User Guide for Linux Instances/ .
--
--
-- /See:/ 'coverageNormalizedUnits' smart constructor.
data CoverageNormalizedUnits =
  CoverageNormalizedUnits'
    { _cnuReservedNormalizedUnits           :: !(Maybe Text)
    , _cnuTotalRunningNormalizedUnits       :: !(Maybe Text)
    , _cnuCoverageNormalizedUnitsPercentage :: !(Maybe Text)
    , _cnuOnDemandNormalizedUnits           :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoverageNormalizedUnits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnuReservedNormalizedUnits' - The number of normalized units that a reservation covers.
--
-- * 'cnuTotalRunningNormalizedUnits' - The total number of normalized units that you used.
--
-- * 'cnuCoverageNormalizedUnitsPercentage' - The percentage of your used instance normalized units that a reservation covers.
--
-- * 'cnuOnDemandNormalizedUnits' - The number of normalized units that are covered by On-Demand Instances instead of a reservation.
coverageNormalizedUnits
    :: CoverageNormalizedUnits
coverageNormalizedUnits =
  CoverageNormalizedUnits'
    { _cnuReservedNormalizedUnits = Nothing
    , _cnuTotalRunningNormalizedUnits = Nothing
    , _cnuCoverageNormalizedUnitsPercentage = Nothing
    , _cnuOnDemandNormalizedUnits = Nothing
    }


-- | The number of normalized units that a reservation covers.
cnuReservedNormalizedUnits :: Lens' CoverageNormalizedUnits (Maybe Text)
cnuReservedNormalizedUnits = lens _cnuReservedNormalizedUnits (\ s a -> s{_cnuReservedNormalizedUnits = a})

-- | The total number of normalized units that you used.
cnuTotalRunningNormalizedUnits :: Lens' CoverageNormalizedUnits (Maybe Text)
cnuTotalRunningNormalizedUnits = lens _cnuTotalRunningNormalizedUnits (\ s a -> s{_cnuTotalRunningNormalizedUnits = a})

-- | The percentage of your used instance normalized units that a reservation covers.
cnuCoverageNormalizedUnitsPercentage :: Lens' CoverageNormalizedUnits (Maybe Text)
cnuCoverageNormalizedUnitsPercentage = lens _cnuCoverageNormalizedUnitsPercentage (\ s a -> s{_cnuCoverageNormalizedUnitsPercentage = a})

-- | The number of normalized units that are covered by On-Demand Instances instead of a reservation.
cnuOnDemandNormalizedUnits :: Lens' CoverageNormalizedUnits (Maybe Text)
cnuOnDemandNormalizedUnits = lens _cnuOnDemandNormalizedUnits (\ s a -> s{_cnuOnDemandNormalizedUnits = a})

instance FromJSON CoverageNormalizedUnits where
        parseJSON
          = withObject "CoverageNormalizedUnits"
              (\ x ->
                 CoverageNormalizedUnits' <$>
                   (x .:? "ReservedNormalizedUnits") <*>
                     (x .:? "TotalRunningNormalizedUnits")
                     <*> (x .:? "CoverageNormalizedUnitsPercentage")
                     <*> (x .:? "OnDemandNormalizedUnits"))

instance Hashable CoverageNormalizedUnits where

instance NFData CoverageNormalizedUnits where

-- | Context about the current instance.
--
--
--
-- /See:/ 'currentInstance' smart constructor.
data CurrentInstance =
  CurrentInstance'
    { _ciResourceId :: !(Maybe Text)
    , _ciCurrencyCode :: !(Maybe Text)
    , _ciResourceUtilization :: !(Maybe ResourceUtilization)
    , _ciResourceDetails :: !(Maybe ResourceDetails)
    , _ciTotalRunningHoursInLookbackPeriod :: !(Maybe Text)
    , _ciReservationCoveredHoursInLookbackPeriod :: !(Maybe Text)
    , _ciOnDemandHoursInLookbackPeriod :: !(Maybe Text)
    , _ciMonthlyCost :: !(Maybe Text)
    , _ciSavingsPlansCoveredHoursInLookbackPeriod :: !(Maybe Text)
    , _ciTags :: !(Maybe [TagValues])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CurrentInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciResourceId' - Resource ID of the current instance.
--
-- * 'ciCurrencyCode' - The currency code that Amazon Web Services used to calculate the costs for this instance.
--
-- * 'ciResourceUtilization' - Utilization information of the current instance during the lookback period.
--
-- * 'ciResourceDetails' - Details about the resource and utilization.
--
-- * 'ciTotalRunningHoursInLookbackPeriod' - The total number of hours the instance ran during the lookback period.
--
-- * 'ciReservationCoveredHoursInLookbackPeriod' - Number of hours during the lookback period covered by reservations.
--
-- * 'ciOnDemandHoursInLookbackPeriod' - Number of hours during the lookback period billed at On Demand rates.
--
-- * 'ciMonthlyCost' - Current On Demand cost of operating this instance on a monthly basis.
--
-- * 'ciSavingsPlansCoveredHoursInLookbackPeriod' - Number of hours during the lookback period covered by Savings Plans.
--
-- * 'ciTags' - Cost allocation resource tags applied to the instance.
currentInstance
    :: CurrentInstance
currentInstance =
  CurrentInstance'
    { _ciResourceId = Nothing
    , _ciCurrencyCode = Nothing
    , _ciResourceUtilization = Nothing
    , _ciResourceDetails = Nothing
    , _ciTotalRunningHoursInLookbackPeriod = Nothing
    , _ciReservationCoveredHoursInLookbackPeriod = Nothing
    , _ciOnDemandHoursInLookbackPeriod = Nothing
    , _ciMonthlyCost = Nothing
    , _ciSavingsPlansCoveredHoursInLookbackPeriod = Nothing
    , _ciTags = Nothing
    }


-- | Resource ID of the current instance.
ciResourceId :: Lens' CurrentInstance (Maybe Text)
ciResourceId = lens _ciResourceId (\ s a -> s{_ciResourceId = a})

-- | The currency code that Amazon Web Services used to calculate the costs for this instance.
ciCurrencyCode :: Lens' CurrentInstance (Maybe Text)
ciCurrencyCode = lens _ciCurrencyCode (\ s a -> s{_ciCurrencyCode = a})

-- | Utilization information of the current instance during the lookback period.
ciResourceUtilization :: Lens' CurrentInstance (Maybe ResourceUtilization)
ciResourceUtilization = lens _ciResourceUtilization (\ s a -> s{_ciResourceUtilization = a})

-- | Details about the resource and utilization.
ciResourceDetails :: Lens' CurrentInstance (Maybe ResourceDetails)
ciResourceDetails = lens _ciResourceDetails (\ s a -> s{_ciResourceDetails = a})

-- | The total number of hours the instance ran during the lookback period.
ciTotalRunningHoursInLookbackPeriod :: Lens' CurrentInstance (Maybe Text)
ciTotalRunningHoursInLookbackPeriod = lens _ciTotalRunningHoursInLookbackPeriod (\ s a -> s{_ciTotalRunningHoursInLookbackPeriod = a})

-- | Number of hours during the lookback period covered by reservations.
ciReservationCoveredHoursInLookbackPeriod :: Lens' CurrentInstance (Maybe Text)
ciReservationCoveredHoursInLookbackPeriod = lens _ciReservationCoveredHoursInLookbackPeriod (\ s a -> s{_ciReservationCoveredHoursInLookbackPeriod = a})

-- | Number of hours during the lookback period billed at On Demand rates.
ciOnDemandHoursInLookbackPeriod :: Lens' CurrentInstance (Maybe Text)
ciOnDemandHoursInLookbackPeriod = lens _ciOnDemandHoursInLookbackPeriod (\ s a -> s{_ciOnDemandHoursInLookbackPeriod = a})

-- | Current On Demand cost of operating this instance on a monthly basis.
ciMonthlyCost :: Lens' CurrentInstance (Maybe Text)
ciMonthlyCost = lens _ciMonthlyCost (\ s a -> s{_ciMonthlyCost = a})

-- | Number of hours during the lookback period covered by Savings Plans.
ciSavingsPlansCoveredHoursInLookbackPeriod :: Lens' CurrentInstance (Maybe Text)
ciSavingsPlansCoveredHoursInLookbackPeriod = lens _ciSavingsPlansCoveredHoursInLookbackPeriod (\ s a -> s{_ciSavingsPlansCoveredHoursInLookbackPeriod = a})

-- | Cost allocation resource tags applied to the instance.
ciTags :: Lens' CurrentInstance [TagValues]
ciTags = lens _ciTags (\ s a -> s{_ciTags = a}) . _Default . _Coerce

instance FromJSON CurrentInstance where
        parseJSON
          = withObject "CurrentInstance"
              (\ x ->
                 CurrentInstance' <$>
                   (x .:? "ResourceId") <*> (x .:? "CurrencyCode") <*>
                     (x .:? "ResourceUtilization")
                     <*> (x .:? "ResourceDetails")
                     <*> (x .:? "TotalRunningHoursInLookbackPeriod")
                     <*> (x .:? "ReservationCoveredHoursInLookbackPeriod")
                     <*> (x .:? "OnDemandHoursInLookbackPeriod")
                     <*> (x .:? "MonthlyCost")
                     <*>
                     (x .:? "SavingsPlansCoveredHoursInLookbackPeriod")
                     <*> (x .:? "Tags" .!= mempty))

instance Hashable CurrentInstance where

instance NFData CurrentInstance where

-- | The time period that you want the usage and costs for.
--
--
--
-- /See:/ 'dateInterval' smart constructor.
data DateInterval =
  DateInterval'
    { _diStart :: !Text
    , _diEnd   :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DateInterval' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diStart' - The beginning of the time period that you want the usage and costs for. The start date is inclusive. For example, if @start@ is @2017-01-01@ , AWS retrieves cost and usage data starting at @2017-01-01@ up to the end date.
--
-- * 'diEnd' - The end of the time period that you want the usage and costs for. The end date is exclusive. For example, if @end@ is @2017-05-01@ , AWS retrieves cost and usage data from the start date up to, but not including, @2017-05-01@ .
dateInterval
    :: Text -- ^ 'diStart'
    -> Text -- ^ 'diEnd'
    -> DateInterval
dateInterval pStart_ pEnd_ = DateInterval' {_diStart = pStart_, _diEnd = pEnd_}


-- | The beginning of the time period that you want the usage and costs for. The start date is inclusive. For example, if @start@ is @2017-01-01@ , AWS retrieves cost and usage data starting at @2017-01-01@ up to the end date.
diStart :: Lens' DateInterval Text
diStart = lens _diStart (\ s a -> s{_diStart = a})

-- | The end of the time period that you want the usage and costs for. The end date is exclusive. For example, if @end@ is @2017-05-01@ , AWS retrieves cost and usage data from the start date up to, but not including, @2017-05-01@ .
diEnd :: Lens' DateInterval Text
diEnd = lens _diEnd (\ s a -> s{_diEnd = a})

instance FromJSON DateInterval where
        parseJSON
          = withObject "DateInterval"
              (\ x ->
                 DateInterval' <$> (x .: "Start") <*> (x .: "End"))

instance Hashable DateInterval where

instance NFData DateInterval where

instance ToJSON DateInterval where
        toJSON DateInterval'{..}
          = object
              (catMaybes
                 [Just ("Start" .= _diStart), Just ("End" .= _diEnd)])

-- | The metadata that you can use to filter and group your results. You can use @GetDimensionValues@ to find specific values.
--
--
--
-- /See:/ 'dimensionValues' smart constructor.
data DimensionValues =
  DimensionValues'
    { _dvValues       :: !(Maybe [Text])
    , _dvKey          :: !(Maybe Dimension)
    , _dvMatchOptions :: !(Maybe [MatchOption])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DimensionValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvValues' - The metadata values that you can use to filter and group your results. You can use @GetDimensionValues@ to find specific values.
--
-- * 'dvKey' - The names of the metadata types that you can use to filter and group your results. For example, @AZ@ returns a list of Availability Zones.
--
-- * 'dvMatchOptions' - The match options that you can use to filter your results. @MatchOptions@ is only applicable for actions related to Cost Category. The default values for @MatchOptions@ is @EQUALS@ and @CASE_SENSITIVE@ .
dimensionValues
    :: DimensionValues
dimensionValues =
  DimensionValues'
    {_dvValues = Nothing, _dvKey = Nothing, _dvMatchOptions = Nothing}


-- | The metadata values that you can use to filter and group your results. You can use @GetDimensionValues@ to find specific values.
dvValues :: Lens' DimensionValues [Text]
dvValues = lens _dvValues (\ s a -> s{_dvValues = a}) . _Default . _Coerce

-- | The names of the metadata types that you can use to filter and group your results. For example, @AZ@ returns a list of Availability Zones.
dvKey :: Lens' DimensionValues (Maybe Dimension)
dvKey = lens _dvKey (\ s a -> s{_dvKey = a})

-- | The match options that you can use to filter your results. @MatchOptions@ is only applicable for actions related to Cost Category. The default values for @MatchOptions@ is @EQUALS@ and @CASE_SENSITIVE@ .
dvMatchOptions :: Lens' DimensionValues [MatchOption]
dvMatchOptions = lens _dvMatchOptions (\ s a -> s{_dvMatchOptions = a}) . _Default . _Coerce

instance FromJSON DimensionValues where
        parseJSON
          = withObject "DimensionValues"
              (\ x ->
                 DimensionValues' <$>
                   (x .:? "Values" .!= mempty) <*> (x .:? "Key") <*>
                     (x .:? "MatchOptions" .!= mempty))

instance Hashable DimensionValues where

instance NFData DimensionValues where

instance ToJSON DimensionValues where
        toJSON DimensionValues'{..}
          = object
              (catMaybes
                 [("Values" .=) <$> _dvValues, ("Key" .=) <$> _dvKey,
                  ("MatchOptions" .=) <$> _dvMatchOptions])

-- | The metadata of a specific type that you can use to filter and group your results. You can use @GetDimensionValues@ to find specific values.
--
--
--
-- /See:/ 'dimensionValuesWithAttributes' smart constructor.
data DimensionValuesWithAttributes =
  DimensionValuesWithAttributes'
    { _dvwaValue      :: !(Maybe Text)
    , _dvwaAttributes :: !(Maybe (Map Text Text))
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DimensionValuesWithAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvwaValue' - The value of a dimension with a specific attribute.
--
-- * 'dvwaAttributes' - The attribute that applies to a specific @Dimension@ .
dimensionValuesWithAttributes
    :: DimensionValuesWithAttributes
dimensionValuesWithAttributes =
  DimensionValuesWithAttributes'
    {_dvwaValue = Nothing, _dvwaAttributes = Nothing}


-- | The value of a dimension with a specific attribute.
dvwaValue :: Lens' DimensionValuesWithAttributes (Maybe Text)
dvwaValue = lens _dvwaValue (\ s a -> s{_dvwaValue = a})

-- | The attribute that applies to a specific @Dimension@ .
dvwaAttributes :: Lens' DimensionValuesWithAttributes (HashMap Text Text)
dvwaAttributes = lens _dvwaAttributes (\ s a -> s{_dvwaAttributes = a}) . _Default . _Map

instance FromJSON DimensionValuesWithAttributes where
        parseJSON
          = withObject "DimensionValuesWithAttributes"
              (\ x ->
                 DimensionValuesWithAttributes' <$>
                   (x .:? "Value") <*> (x .:? "Attributes" .!= mempty))

instance Hashable DimensionValuesWithAttributes where

instance NFData DimensionValuesWithAttributes where

-- | Details about the Amazon EC2 instances that AWS recommends that you purchase.
--
--
--
-- /See:/ 'ec2InstanceDetails' smart constructor.
data EC2InstanceDetails =
  EC2InstanceDetails'
    { _eidCurrentGeneration :: !(Maybe Bool)
    , _eidPlatform          :: !(Maybe Text)
    , _eidFamily            :: !(Maybe Text)
    , _eidInstanceType      :: !(Maybe Text)
    , _eidAvailabilityZone  :: !(Maybe Text)
    , _eidSizeFlexEligible  :: !(Maybe Bool)
    , _eidTenancy           :: !(Maybe Text)
    , _eidRegion            :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EC2InstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidCurrentGeneration' - Whether the recommendation is for a current-generation instance.
--
-- * 'eidPlatform' - The platform of the recommended reservation. The platform is the specific combination of operating system, license model, and software on an instance.
--
-- * 'eidFamily' - The instance family of the recommended reservation.
--
-- * 'eidInstanceType' - The type of instance that AWS recommends.
--
-- * 'eidAvailabilityZone' - The Availability Zone of the recommended reservation.
--
-- * 'eidSizeFlexEligible' - Whether the recommended reservation is size flexible.
--
-- * 'eidTenancy' - Whether the recommended reservation is dedicated or shared.
--
-- * 'eidRegion' - The AWS Region of the recommended reservation.
ec2InstanceDetails
    :: EC2InstanceDetails
ec2InstanceDetails =
  EC2InstanceDetails'
    { _eidCurrentGeneration = Nothing
    , _eidPlatform = Nothing
    , _eidFamily = Nothing
    , _eidInstanceType = Nothing
    , _eidAvailabilityZone = Nothing
    , _eidSizeFlexEligible = Nothing
    , _eidTenancy = Nothing
    , _eidRegion = Nothing
    }


-- | Whether the recommendation is for a current-generation instance.
eidCurrentGeneration :: Lens' EC2InstanceDetails (Maybe Bool)
eidCurrentGeneration = lens _eidCurrentGeneration (\ s a -> s{_eidCurrentGeneration = a})

-- | The platform of the recommended reservation. The platform is the specific combination of operating system, license model, and software on an instance.
eidPlatform :: Lens' EC2InstanceDetails (Maybe Text)
eidPlatform = lens _eidPlatform (\ s a -> s{_eidPlatform = a})

-- | The instance family of the recommended reservation.
eidFamily :: Lens' EC2InstanceDetails (Maybe Text)
eidFamily = lens _eidFamily (\ s a -> s{_eidFamily = a})

-- | The type of instance that AWS recommends.
eidInstanceType :: Lens' EC2InstanceDetails (Maybe Text)
eidInstanceType = lens _eidInstanceType (\ s a -> s{_eidInstanceType = a})

-- | The Availability Zone of the recommended reservation.
eidAvailabilityZone :: Lens' EC2InstanceDetails (Maybe Text)
eidAvailabilityZone = lens _eidAvailabilityZone (\ s a -> s{_eidAvailabilityZone = a})

-- | Whether the recommended reservation is size flexible.
eidSizeFlexEligible :: Lens' EC2InstanceDetails (Maybe Bool)
eidSizeFlexEligible = lens _eidSizeFlexEligible (\ s a -> s{_eidSizeFlexEligible = a})

-- | Whether the recommended reservation is dedicated or shared.
eidTenancy :: Lens' EC2InstanceDetails (Maybe Text)
eidTenancy = lens _eidTenancy (\ s a -> s{_eidTenancy = a})

-- | The AWS Region of the recommended reservation.
eidRegion :: Lens' EC2InstanceDetails (Maybe Text)
eidRegion = lens _eidRegion (\ s a -> s{_eidRegion = a})

instance FromJSON EC2InstanceDetails where
        parseJSON
          = withObject "EC2InstanceDetails"
              (\ x ->
                 EC2InstanceDetails' <$>
                   (x .:? "CurrentGeneration") <*> (x .:? "Platform")
                     <*> (x .:? "Family")
                     <*> (x .:? "InstanceType")
                     <*> (x .:? "AvailabilityZone")
                     <*> (x .:? "SizeFlexEligible")
                     <*> (x .:? "Tenancy")
                     <*> (x .:? "Region"))

instance Hashable EC2InstanceDetails where

instance NFData EC2InstanceDetails where

-- | Details on the Amazon EC2 Resource.
--
--
--
-- /See:/ 'ec2ResourceDetails' smart constructor.
data EC2ResourceDetails =
  EC2ResourceDetails'
    { _erdPlatform           :: !(Maybe Text)
    , _erdVcpu               :: !(Maybe Text)
    , _erdNetworkPerformance :: !(Maybe Text)
    , _erdMemory             :: !(Maybe Text)
    , _erdInstanceType       :: !(Maybe Text)
    , _erdStorage            :: !(Maybe Text)
    , _erdSku                :: !(Maybe Text)
    , _erdRegion             :: !(Maybe Text)
    , _erdHourlyOnDemandRate :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EC2ResourceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erdPlatform' - The platform of the Amazon Web Services instance. The platform is the specific combination of operating system, license model, and software on an instance.
--
-- * 'erdVcpu' - Number of VCPU cores in the Amazon Web Services instance type.
--
-- * 'erdNetworkPerformance' - Network performance capacity of the Amazon Web Services instance.
--
-- * 'erdMemory' - Memory capacity of Amazon Web Services instance.
--
-- * 'erdInstanceType' - The type of Amazon Web Services instance.
--
-- * 'erdStorage' - The disk storage of the Amazon Web Services instance (Not EBS storage).
--
-- * 'erdSku' - The SKU of the product.
--
-- * 'erdRegion' - The Amazon Web Services Region of the instance.
--
-- * 'erdHourlyOnDemandRate' - Hourly public On Demand rate for the instance type.
ec2ResourceDetails
    :: EC2ResourceDetails
ec2ResourceDetails =
  EC2ResourceDetails'
    { _erdPlatform = Nothing
    , _erdVcpu = Nothing
    , _erdNetworkPerformance = Nothing
    , _erdMemory = Nothing
    , _erdInstanceType = Nothing
    , _erdStorage = Nothing
    , _erdSku = Nothing
    , _erdRegion = Nothing
    , _erdHourlyOnDemandRate = Nothing
    }


-- | The platform of the Amazon Web Services instance. The platform is the specific combination of operating system, license model, and software on an instance.
erdPlatform :: Lens' EC2ResourceDetails (Maybe Text)
erdPlatform = lens _erdPlatform (\ s a -> s{_erdPlatform = a})

-- | Number of VCPU cores in the Amazon Web Services instance type.
erdVcpu :: Lens' EC2ResourceDetails (Maybe Text)
erdVcpu = lens _erdVcpu (\ s a -> s{_erdVcpu = a})

-- | Network performance capacity of the Amazon Web Services instance.
erdNetworkPerformance :: Lens' EC2ResourceDetails (Maybe Text)
erdNetworkPerformance = lens _erdNetworkPerformance (\ s a -> s{_erdNetworkPerformance = a})

-- | Memory capacity of Amazon Web Services instance.
erdMemory :: Lens' EC2ResourceDetails (Maybe Text)
erdMemory = lens _erdMemory (\ s a -> s{_erdMemory = a})

-- | The type of Amazon Web Services instance.
erdInstanceType :: Lens' EC2ResourceDetails (Maybe Text)
erdInstanceType = lens _erdInstanceType (\ s a -> s{_erdInstanceType = a})

-- | The disk storage of the Amazon Web Services instance (Not EBS storage).
erdStorage :: Lens' EC2ResourceDetails (Maybe Text)
erdStorage = lens _erdStorage (\ s a -> s{_erdStorage = a})

-- | The SKU of the product.
erdSku :: Lens' EC2ResourceDetails (Maybe Text)
erdSku = lens _erdSku (\ s a -> s{_erdSku = a})

-- | The Amazon Web Services Region of the instance.
erdRegion :: Lens' EC2ResourceDetails (Maybe Text)
erdRegion = lens _erdRegion (\ s a -> s{_erdRegion = a})

-- | Hourly public On Demand rate for the instance type.
erdHourlyOnDemandRate :: Lens' EC2ResourceDetails (Maybe Text)
erdHourlyOnDemandRate = lens _erdHourlyOnDemandRate (\ s a -> s{_erdHourlyOnDemandRate = a})

instance FromJSON EC2ResourceDetails where
        parseJSON
          = withObject "EC2ResourceDetails"
              (\ x ->
                 EC2ResourceDetails' <$>
                   (x .:? "Platform") <*> (x .:? "Vcpu") <*>
                     (x .:? "NetworkPerformance")
                     <*> (x .:? "Memory")
                     <*> (x .:? "InstanceType")
                     <*> (x .:? "Storage")
                     <*> (x .:? "Sku")
                     <*> (x .:? "Region")
                     <*> (x .:? "HourlyOnDemandRate"))

instance Hashable EC2ResourceDetails where

instance NFData EC2ResourceDetails where

-- | Utilization metrics of the instance.
--
--
--
-- /See:/ 'ec2ResourceUtilization' smart constructor.
data EC2ResourceUtilization =
  EC2ResourceUtilization'
    { _eruMaxCPUUtilizationPercentage     :: !(Maybe Text)
    , _eruMaxStorageUtilizationPercentage :: !(Maybe Text)
    , _eruMaxMemoryUtilizationPercentage  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EC2ResourceUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eruMaxCPUUtilizationPercentage' - Maximum observed or expected CPU utilization of the instance.
--
-- * 'eruMaxStorageUtilizationPercentage' - Maximum observed or expected storage utilization of the instance (does not measure EBS storage).
--
-- * 'eruMaxMemoryUtilizationPercentage' - Maximum observed or expected memory utilization of the instance.
ec2ResourceUtilization
    :: EC2ResourceUtilization
ec2ResourceUtilization =
  EC2ResourceUtilization'
    { _eruMaxCPUUtilizationPercentage = Nothing
    , _eruMaxStorageUtilizationPercentage = Nothing
    , _eruMaxMemoryUtilizationPercentage = Nothing
    }


-- | Maximum observed or expected CPU utilization of the instance.
eruMaxCPUUtilizationPercentage :: Lens' EC2ResourceUtilization (Maybe Text)
eruMaxCPUUtilizationPercentage = lens _eruMaxCPUUtilizationPercentage (\ s a -> s{_eruMaxCPUUtilizationPercentage = a})

-- | Maximum observed or expected storage utilization of the instance (does not measure EBS storage).
eruMaxStorageUtilizationPercentage :: Lens' EC2ResourceUtilization (Maybe Text)
eruMaxStorageUtilizationPercentage = lens _eruMaxStorageUtilizationPercentage (\ s a -> s{_eruMaxStorageUtilizationPercentage = a})

-- | Maximum observed or expected memory utilization of the instance.
eruMaxMemoryUtilizationPercentage :: Lens' EC2ResourceUtilization (Maybe Text)
eruMaxMemoryUtilizationPercentage = lens _eruMaxMemoryUtilizationPercentage (\ s a -> s{_eruMaxMemoryUtilizationPercentage = a})

instance FromJSON EC2ResourceUtilization where
        parseJSON
          = withObject "EC2ResourceUtilization"
              (\ x ->
                 EC2ResourceUtilization' <$>
                   (x .:? "MaxCpuUtilizationPercentage") <*>
                     (x .:? "MaxStorageUtilizationPercentage")
                     <*> (x .:? "MaxMemoryUtilizationPercentage"))

instance Hashable EC2ResourceUtilization where

instance NFData EC2ResourceUtilization where

-- | The Amazon EC2 hardware specifications that you want AWS to provide recommendations for.
--
--
--
-- /See:/ 'ec2Specification' smart constructor.
newtype EC2Specification =
  EC2Specification'
    { _esOfferingClass :: Maybe OfferingClass
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EC2Specification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esOfferingClass' - Whether you want a recommendation for standard or convertible reservations.
ec2Specification
    :: EC2Specification
ec2Specification = EC2Specification' {_esOfferingClass = Nothing}


-- | Whether you want a recommendation for standard or convertible reservations.
esOfferingClass :: Lens' EC2Specification (Maybe OfferingClass)
esOfferingClass = lens _esOfferingClass (\ s a -> s{_esOfferingClass = a})

instance FromJSON EC2Specification where
        parseJSON
          = withObject "EC2Specification"
              (\ x ->
                 EC2Specification' <$> (x .:? "OfferingClass"))

instance Hashable EC2Specification where

instance NFData EC2Specification where

instance ToJSON EC2Specification where
        toJSON EC2Specification'{..}
          = object
              (catMaybes
                 [("OfferingClass" .=) <$> _esOfferingClass])

-- | Details about the Amazon ES instances that AWS recommends that you purchase.
--
--
--
-- /See:/ 'eSInstanceDetails' smart constructor.
data ESInstanceDetails =
  ESInstanceDetails'
    { _esidCurrentGeneration :: !(Maybe Bool)
    , _esidInstanceClass     :: !(Maybe Text)
    , _esidInstanceSize      :: !(Maybe Text)
    , _esidSizeFlexEligible  :: !(Maybe Bool)
    , _esidRegion            :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ESInstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esidCurrentGeneration' - Whether the recommendation is for a current-generation instance.
--
-- * 'esidInstanceClass' - The class of instance that AWS recommends.
--
-- * 'esidInstanceSize' - The size of instance that AWS recommends.
--
-- * 'esidSizeFlexEligible' - Whether the recommended reservation is size flexible.
--
-- * 'esidRegion' - The AWS Region of the recommended reservation.
eSInstanceDetails
    :: ESInstanceDetails
eSInstanceDetails =
  ESInstanceDetails'
    { _esidCurrentGeneration = Nothing
    , _esidInstanceClass = Nothing
    , _esidInstanceSize = Nothing
    , _esidSizeFlexEligible = Nothing
    , _esidRegion = Nothing
    }


-- | Whether the recommendation is for a current-generation instance.
esidCurrentGeneration :: Lens' ESInstanceDetails (Maybe Bool)
esidCurrentGeneration = lens _esidCurrentGeneration (\ s a -> s{_esidCurrentGeneration = a})

-- | The class of instance that AWS recommends.
esidInstanceClass :: Lens' ESInstanceDetails (Maybe Text)
esidInstanceClass = lens _esidInstanceClass (\ s a -> s{_esidInstanceClass = a})

-- | The size of instance that AWS recommends.
esidInstanceSize :: Lens' ESInstanceDetails (Maybe Text)
esidInstanceSize = lens _esidInstanceSize (\ s a -> s{_esidInstanceSize = a})

-- | Whether the recommended reservation is size flexible.
esidSizeFlexEligible :: Lens' ESInstanceDetails (Maybe Bool)
esidSizeFlexEligible = lens _esidSizeFlexEligible (\ s a -> s{_esidSizeFlexEligible = a})

-- | The AWS Region of the recommended reservation.
esidRegion :: Lens' ESInstanceDetails (Maybe Text)
esidRegion = lens _esidRegion (\ s a -> s{_esidRegion = a})

instance FromJSON ESInstanceDetails where
        parseJSON
          = withObject "ESInstanceDetails"
              (\ x ->
                 ESInstanceDetails' <$>
                   (x .:? "CurrentGeneration") <*>
                     (x .:? "InstanceClass")
                     <*> (x .:? "InstanceSize")
                     <*> (x .:? "SizeFlexEligible")
                     <*> (x .:? "Region"))

instance Hashable ESInstanceDetails where

instance NFData ESInstanceDetails where

-- | Details about the Amazon ElastiCache instances that AWS recommends that you purchase.
--
--
--
-- /See:/ 'elastiCacheInstanceDetails' smart constructor.
data ElastiCacheInstanceDetails =
  ElastiCacheInstanceDetails'
    { _ecidCurrentGeneration  :: !(Maybe Bool)
    , _ecidProductDescription :: !(Maybe Text)
    , _ecidFamily             :: !(Maybe Text)
    , _ecidSizeFlexEligible   :: !(Maybe Bool)
    , _ecidRegion             :: !(Maybe Text)
    , _ecidNodeType           :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ElastiCacheInstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecidCurrentGeneration' - Whether the recommendation is for a current generation instance.
--
-- * 'ecidProductDescription' - The description of the recommended reservation.
--
-- * 'ecidFamily' - The instance family of the recommended reservation.
--
-- * 'ecidSizeFlexEligible' - Whether the recommended reservation is size flexible.
--
-- * 'ecidRegion' - The AWS Region of the recommended reservation.
--
-- * 'ecidNodeType' - The type of node that AWS recommends.
elastiCacheInstanceDetails
    :: ElastiCacheInstanceDetails
elastiCacheInstanceDetails =
  ElastiCacheInstanceDetails'
    { _ecidCurrentGeneration = Nothing
    , _ecidProductDescription = Nothing
    , _ecidFamily = Nothing
    , _ecidSizeFlexEligible = Nothing
    , _ecidRegion = Nothing
    , _ecidNodeType = Nothing
    }


-- | Whether the recommendation is for a current generation instance.
ecidCurrentGeneration :: Lens' ElastiCacheInstanceDetails (Maybe Bool)
ecidCurrentGeneration = lens _ecidCurrentGeneration (\ s a -> s{_ecidCurrentGeneration = a})

-- | The description of the recommended reservation.
ecidProductDescription :: Lens' ElastiCacheInstanceDetails (Maybe Text)
ecidProductDescription = lens _ecidProductDescription (\ s a -> s{_ecidProductDescription = a})

-- | The instance family of the recommended reservation.
ecidFamily :: Lens' ElastiCacheInstanceDetails (Maybe Text)
ecidFamily = lens _ecidFamily (\ s a -> s{_ecidFamily = a})

-- | Whether the recommended reservation is size flexible.
ecidSizeFlexEligible :: Lens' ElastiCacheInstanceDetails (Maybe Bool)
ecidSizeFlexEligible = lens _ecidSizeFlexEligible (\ s a -> s{_ecidSizeFlexEligible = a})

-- | The AWS Region of the recommended reservation.
ecidRegion :: Lens' ElastiCacheInstanceDetails (Maybe Text)
ecidRegion = lens _ecidRegion (\ s a -> s{_ecidRegion = a})

-- | The type of node that AWS recommends.
ecidNodeType :: Lens' ElastiCacheInstanceDetails (Maybe Text)
ecidNodeType = lens _ecidNodeType (\ s a -> s{_ecidNodeType = a})

instance FromJSON ElastiCacheInstanceDetails where
        parseJSON
          = withObject "ElastiCacheInstanceDetails"
              (\ x ->
                 ElastiCacheInstanceDetails' <$>
                   (x .:? "CurrentGeneration") <*>
                     (x .:? "ProductDescription")
                     <*> (x .:? "Family")
                     <*> (x .:? "SizeFlexEligible")
                     <*> (x .:? "Region")
                     <*> (x .:? "NodeType"))

instance Hashable ElastiCacheInstanceDetails where

instance NFData ElastiCacheInstanceDetails where

-- | Use @Expression@ to filter by cost or by usage. There are two patterns:
--
--
--     * Simple dimension values - You can set the dimension name and values for the filters that you plan to use. For example, you can filter for @REGION==us-east-1 OR REGION==us-west-1@ . The @Expression@ for that looks like this:
--
-- @{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1", “us-west-1” ] } }@
--
-- The list of dimension values are OR'd together to retrieve cost or usage data. You can create @Expression@ and @DimensionValues@ objects using either @with*@ methods or @set*@ methods in multiple lines.
--
--     * Compound dimension values with logical operations - You can use multiple @Expression@ types and the logical operators @AND/OR/NOT@ to create a list of one or more @Expression@ objects. This allows you to filter on more advanced options. For example, you can filter on @((REGION == us-east-1 OR REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE != DataTransfer)@ . The @Expression@ for that looks like this:
--
-- @{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION", "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] } @
--
-- @{ "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE", "Values": [ "DataTransfer" ] } } @
--
--
--
--
-- /See:/ 'expression' smart constructor.
data Expression =
  Expression'
    { _eNot            :: !(Maybe Expression)
    , _eAnd            :: !(Maybe [Expression])
    , _eOr             :: !(Maybe [Expression])
    , _eCostCategories :: !(Maybe CostCategoryValues)
    , _eDimensions     :: !(Maybe DimensionValues)
    , _eTags           :: !(Maybe TagValues)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eNot' - Return results that don't match a @Dimension@ object.
--
-- * 'eAnd' - Return results that match both @Dimension@ objects.
--
-- * 'eOr' - Return results that match either @Dimension@ object.
--
-- * 'eCostCategories' - The filter based on @CostCategory@ values.
--
-- * 'eDimensions' - The specific @Dimension@ to use for @Expression@ .
--
-- * 'eTags' - The specific @Tag@ to use for @Expression@ .
expression
    :: Expression
expression =
  Expression'
    { _eNot = Nothing
    , _eAnd = Nothing
    , _eOr = Nothing
    , _eCostCategories = Nothing
    , _eDimensions = Nothing
    , _eTags = Nothing
    }


-- | Return results that don't match a @Dimension@ object.
eNot :: Lens' Expression (Maybe Expression)
eNot = lens _eNot (\ s a -> s{_eNot = a})

-- | Return results that match both @Dimension@ objects.
eAnd :: Lens' Expression [Expression]
eAnd = lens _eAnd (\ s a -> s{_eAnd = a}) . _Default . _Coerce

-- | Return results that match either @Dimension@ object.
eOr :: Lens' Expression [Expression]
eOr = lens _eOr (\ s a -> s{_eOr = a}) . _Default . _Coerce

-- | The filter based on @CostCategory@ values.
eCostCategories :: Lens' Expression (Maybe CostCategoryValues)
eCostCategories = lens _eCostCategories (\ s a -> s{_eCostCategories = a})

-- | The specific @Dimension@ to use for @Expression@ .
eDimensions :: Lens' Expression (Maybe DimensionValues)
eDimensions = lens _eDimensions (\ s a -> s{_eDimensions = a})

-- | The specific @Tag@ to use for @Expression@ .
eTags :: Lens' Expression (Maybe TagValues)
eTags = lens _eTags (\ s a -> s{_eTags = a})

instance FromJSON Expression where
        parseJSON
          = withObject "Expression"
              (\ x ->
                 Expression' <$>
                   (x .:? "Not") <*> (x .:? "And" .!= mempty) <*>
                     (x .:? "Or" .!= mempty)
                     <*> (x .:? "CostCategories")
                     <*> (x .:? "Dimensions")
                     <*> (x .:? "Tags"))

instance Hashable Expression where

instance NFData Expression where

instance ToJSON Expression where
        toJSON Expression'{..}
          = object
              (catMaybes
                 [("Not" .=) <$> _eNot, ("And" .=) <$> _eAnd,
                  ("Or" .=) <$> _eOr,
                  ("CostCategories" .=) <$> _eCostCategories,
                  ("Dimensions" .=) <$> _eDimensions,
                  ("Tags" .=) <$> _eTags])

-- | The forecast created for your query.
--
--
--
-- /See:/ 'forecastResult' smart constructor.
data ForecastResult =
  ForecastResult'
    { _frTimePeriod                   :: !(Maybe DateInterval)
    , _frMeanValue                    :: !(Maybe Text)
    , _frPredictionIntervalUpperBound :: !(Maybe Text)
    , _frPredictionIntervalLowerBound :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ForecastResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frTimePeriod' - The period of time that the forecast covers.
--
-- * 'frMeanValue' - The mean value of the forecast.
--
-- * 'frPredictionIntervalUpperBound' - The upper limit for the prediction interval.
--
-- * 'frPredictionIntervalLowerBound' - The lower limit for the prediction interval.
forecastResult
    :: ForecastResult
forecastResult =
  ForecastResult'
    { _frTimePeriod = Nothing
    , _frMeanValue = Nothing
    , _frPredictionIntervalUpperBound = Nothing
    , _frPredictionIntervalLowerBound = Nothing
    }


-- | The period of time that the forecast covers.
frTimePeriod :: Lens' ForecastResult (Maybe DateInterval)
frTimePeriod = lens _frTimePeriod (\ s a -> s{_frTimePeriod = a})

-- | The mean value of the forecast.
frMeanValue :: Lens' ForecastResult (Maybe Text)
frMeanValue = lens _frMeanValue (\ s a -> s{_frMeanValue = a})

-- | The upper limit for the prediction interval.
frPredictionIntervalUpperBound :: Lens' ForecastResult (Maybe Text)
frPredictionIntervalUpperBound = lens _frPredictionIntervalUpperBound (\ s a -> s{_frPredictionIntervalUpperBound = a})

-- | The lower limit for the prediction interval.
frPredictionIntervalLowerBound :: Lens' ForecastResult (Maybe Text)
frPredictionIntervalLowerBound = lens _frPredictionIntervalLowerBound (\ s a -> s{_frPredictionIntervalLowerBound = a})

instance FromJSON ForecastResult where
        parseJSON
          = withObject "ForecastResult"
              (\ x ->
                 ForecastResult' <$>
                   (x .:? "TimePeriod") <*> (x .:? "MeanValue") <*>
                     (x .:? "PredictionIntervalUpperBound")
                     <*> (x .:? "PredictionIntervalLowerBound"))

instance Hashable ForecastResult where

instance NFData ForecastResult where

-- | One level of grouped data in the results.
--
--
--
-- /See:/ 'group'' smart constructor.
data Group =
  Group'
    { _gMetrics :: !(Maybe (Map Text MetricValue))
    , _gKeys    :: !(Maybe [Text])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gMetrics' - The metrics that are included in this group.
--
-- * 'gKeys' - The keys that are included in this group.
group'
    :: Group
group' = Group' {_gMetrics = Nothing, _gKeys = Nothing}


-- | The metrics that are included in this group.
gMetrics :: Lens' Group (HashMap Text MetricValue)
gMetrics = lens _gMetrics (\ s a -> s{_gMetrics = a}) . _Default . _Map

-- | The keys that are included in this group.
gKeys :: Lens' Group [Text]
gKeys = lens _gKeys (\ s a -> s{_gKeys = a}) . _Default . _Coerce

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ x ->
                 Group' <$>
                   (x .:? "Metrics" .!= mempty) <*>
                     (x .:? "Keys" .!= mempty))

instance Hashable Group where

instance NFData Group where

-- | Represents a group when you specify a group by criteria or in the response to a query with a specific grouping.
--
--
--
-- /See:/ 'groupDefinition' smart constructor.
data GroupDefinition =
  GroupDefinition'
    { _gdKey  :: !(Maybe Text)
    , _gdType :: !(Maybe GroupDefinitionType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdKey' - The string that represents a key for a specified group.
--
-- * 'gdType' - The string that represents the type of group.
groupDefinition
    :: GroupDefinition
groupDefinition = GroupDefinition' {_gdKey = Nothing, _gdType = Nothing}


-- | The string that represents a key for a specified group.
gdKey :: Lens' GroupDefinition (Maybe Text)
gdKey = lens _gdKey (\ s a -> s{_gdKey = a})

-- | The string that represents the type of group.
gdType :: Lens' GroupDefinition (Maybe GroupDefinitionType)
gdType = lens _gdType (\ s a -> s{_gdType = a})

instance FromJSON GroupDefinition where
        parseJSON
          = withObject "GroupDefinition"
              (\ x ->
                 GroupDefinition' <$>
                   (x .:? "Key") <*> (x .:? "Type"))

instance Hashable GroupDefinition where

instance NFData GroupDefinition where

instance ToJSON GroupDefinition where
        toJSON GroupDefinition'{..}
          = object
              (catMaybes
                 [("Key" .=) <$> _gdKey, ("Type" .=) <$> _gdType])

-- | Details about the instances that AWS recommends that you purchase.
--
--
--
-- /See:/ 'instanceDetails' smart constructor.
data InstanceDetails =
  InstanceDetails'
    { _idESInstanceDetails          :: !(Maybe ESInstanceDetails)
    , _idRDSInstanceDetails         :: !(Maybe RDSInstanceDetails)
    , _idElastiCacheInstanceDetails :: !(Maybe ElastiCacheInstanceDetails)
    , _idEC2InstanceDetails         :: !(Maybe EC2InstanceDetails)
    , _idRedshiftInstanceDetails    :: !(Maybe RedshiftInstanceDetails)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idESInstanceDetails' - The Amazon ES instances that AWS recommends that you purchase.
--
-- * 'idRDSInstanceDetails' - The Amazon RDS instances that AWS recommends that you purchase.
--
-- * 'idElastiCacheInstanceDetails' - The ElastiCache instances that AWS recommends that you purchase.
--
-- * 'idEC2InstanceDetails' - The Amazon EC2 instances that AWS recommends that you purchase.
--
-- * 'idRedshiftInstanceDetails' - The Amazon Redshift instances that AWS recommends that you purchase.
instanceDetails
    :: InstanceDetails
instanceDetails =
  InstanceDetails'
    { _idESInstanceDetails = Nothing
    , _idRDSInstanceDetails = Nothing
    , _idElastiCacheInstanceDetails = Nothing
    , _idEC2InstanceDetails = Nothing
    , _idRedshiftInstanceDetails = Nothing
    }


-- | The Amazon ES instances that AWS recommends that you purchase.
idESInstanceDetails :: Lens' InstanceDetails (Maybe ESInstanceDetails)
idESInstanceDetails = lens _idESInstanceDetails (\ s a -> s{_idESInstanceDetails = a})

-- | The Amazon RDS instances that AWS recommends that you purchase.
idRDSInstanceDetails :: Lens' InstanceDetails (Maybe RDSInstanceDetails)
idRDSInstanceDetails = lens _idRDSInstanceDetails (\ s a -> s{_idRDSInstanceDetails = a})

-- | The ElastiCache instances that AWS recommends that you purchase.
idElastiCacheInstanceDetails :: Lens' InstanceDetails (Maybe ElastiCacheInstanceDetails)
idElastiCacheInstanceDetails = lens _idElastiCacheInstanceDetails (\ s a -> s{_idElastiCacheInstanceDetails = a})

-- | The Amazon EC2 instances that AWS recommends that you purchase.
idEC2InstanceDetails :: Lens' InstanceDetails (Maybe EC2InstanceDetails)
idEC2InstanceDetails = lens _idEC2InstanceDetails (\ s a -> s{_idEC2InstanceDetails = a})

-- | The Amazon Redshift instances that AWS recommends that you purchase.
idRedshiftInstanceDetails :: Lens' InstanceDetails (Maybe RedshiftInstanceDetails)
idRedshiftInstanceDetails = lens _idRedshiftInstanceDetails (\ s a -> s{_idRedshiftInstanceDetails = a})

instance FromJSON InstanceDetails where
        parseJSON
          = withObject "InstanceDetails"
              (\ x ->
                 InstanceDetails' <$>
                   (x .:? "ESInstanceDetails") <*>
                     (x .:? "RDSInstanceDetails")
                     <*> (x .:? "ElastiCacheInstanceDetails")
                     <*> (x .:? "EC2InstanceDetails")
                     <*> (x .:? "RedshiftInstanceDetails"))

instance Hashable InstanceDetails where

instance NFData InstanceDetails where

-- | The aggregated value for a metric.
--
--
--
-- /See:/ 'metricValue' smart constructor.
data MetricValue =
  MetricValue'
    { _mvAmount :: !(Maybe Text)
    , _mvUnit   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvAmount' - The actual number that represents the metric.
--
-- * 'mvUnit' - The unit that the metric is given in.
metricValue
    :: MetricValue
metricValue = MetricValue' {_mvAmount = Nothing, _mvUnit = Nothing}


-- | The actual number that represents the metric.
mvAmount :: Lens' MetricValue (Maybe Text)
mvAmount = lens _mvAmount (\ s a -> s{_mvAmount = a})

-- | The unit that the metric is given in.
mvUnit :: Lens' MetricValue (Maybe Text)
mvUnit = lens _mvUnit (\ s a -> s{_mvUnit = a})

instance FromJSON MetricValue where
        parseJSON
          = withObject "MetricValue"
              (\ x ->
                 MetricValue' <$> (x .:? "Amount") <*> (x .:? "Unit"))

instance Hashable MetricValue where

instance NFData MetricValue where

-- | Details on the modification recommendation.
--
--
--
-- /See:/ 'modifyRecommendationDetail' smart constructor.
newtype ModifyRecommendationDetail =
  ModifyRecommendationDetail'
    { _mrdTargetInstances :: Maybe [TargetInstance]
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyRecommendationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrdTargetInstances' - Identifies whether this instance type is the Amazon Web Services default recommendation.
modifyRecommendationDetail
    :: ModifyRecommendationDetail
modifyRecommendationDetail =
  ModifyRecommendationDetail' {_mrdTargetInstances = Nothing}


-- | Identifies whether this instance type is the Amazon Web Services default recommendation.
mrdTargetInstances :: Lens' ModifyRecommendationDetail [TargetInstance]
mrdTargetInstances = lens _mrdTargetInstances (\ s a -> s{_mrdTargetInstances = a}) . _Default . _Coerce

instance FromJSON ModifyRecommendationDetail where
        parseJSON
          = withObject "ModifyRecommendationDetail"
              (\ x ->
                 ModifyRecommendationDetail' <$>
                   (x .:? "TargetInstances" .!= mempty))

instance Hashable ModifyRecommendationDetail where

instance NFData ModifyRecommendationDetail where

-- | Details about the Amazon RDS instances that AWS recommends that you purchase.
--
--
--
-- /See:/ 'rdsInstanceDetails' smart constructor.
data RDSInstanceDetails =
  RDSInstanceDetails'
    { _ridCurrentGeneration :: !(Maybe Bool)
    , _ridDeploymentOption  :: !(Maybe Text)
    , _ridFamily            :: !(Maybe Text)
    , _ridInstanceType      :: !(Maybe Text)
    , _ridLicenseModel      :: !(Maybe Text)
    , _ridSizeFlexEligible  :: !(Maybe Bool)
    , _ridRegion            :: !(Maybe Text)
    , _ridDatabaseEngine    :: !(Maybe Text)
    , _ridDatabaseEdition   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RDSInstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ridCurrentGeneration' - Whether the recommendation is for a current-generation instance.
--
-- * 'ridDeploymentOption' - Whether the recommendation is for a reservation in a single Availability Zone or a reservation with a backup in a second Availability Zone.
--
-- * 'ridFamily' - The instance family of the recommended reservation.
--
-- * 'ridInstanceType' - The type of instance that AWS recommends.
--
-- * 'ridLicenseModel' - The license model that the recommended reservation supports.
--
-- * 'ridSizeFlexEligible' - Whether the recommended reservation is size flexible.
--
-- * 'ridRegion' - The AWS Region of the recommended reservation.
--
-- * 'ridDatabaseEngine' - The database engine that the recommended reservation supports.
--
-- * 'ridDatabaseEdition' - The database edition that the recommended reservation supports.
rdsInstanceDetails
    :: RDSInstanceDetails
rdsInstanceDetails =
  RDSInstanceDetails'
    { _ridCurrentGeneration = Nothing
    , _ridDeploymentOption = Nothing
    , _ridFamily = Nothing
    , _ridInstanceType = Nothing
    , _ridLicenseModel = Nothing
    , _ridSizeFlexEligible = Nothing
    , _ridRegion = Nothing
    , _ridDatabaseEngine = Nothing
    , _ridDatabaseEdition = Nothing
    }


-- | Whether the recommendation is for a current-generation instance.
ridCurrentGeneration :: Lens' RDSInstanceDetails (Maybe Bool)
ridCurrentGeneration = lens _ridCurrentGeneration (\ s a -> s{_ridCurrentGeneration = a})

-- | Whether the recommendation is for a reservation in a single Availability Zone or a reservation with a backup in a second Availability Zone.
ridDeploymentOption :: Lens' RDSInstanceDetails (Maybe Text)
ridDeploymentOption = lens _ridDeploymentOption (\ s a -> s{_ridDeploymentOption = a})

-- | The instance family of the recommended reservation.
ridFamily :: Lens' RDSInstanceDetails (Maybe Text)
ridFamily = lens _ridFamily (\ s a -> s{_ridFamily = a})

-- | The type of instance that AWS recommends.
ridInstanceType :: Lens' RDSInstanceDetails (Maybe Text)
ridInstanceType = lens _ridInstanceType (\ s a -> s{_ridInstanceType = a})

-- | The license model that the recommended reservation supports.
ridLicenseModel :: Lens' RDSInstanceDetails (Maybe Text)
ridLicenseModel = lens _ridLicenseModel (\ s a -> s{_ridLicenseModel = a})

-- | Whether the recommended reservation is size flexible.
ridSizeFlexEligible :: Lens' RDSInstanceDetails (Maybe Bool)
ridSizeFlexEligible = lens _ridSizeFlexEligible (\ s a -> s{_ridSizeFlexEligible = a})

-- | The AWS Region of the recommended reservation.
ridRegion :: Lens' RDSInstanceDetails (Maybe Text)
ridRegion = lens _ridRegion (\ s a -> s{_ridRegion = a})

-- | The database engine that the recommended reservation supports.
ridDatabaseEngine :: Lens' RDSInstanceDetails (Maybe Text)
ridDatabaseEngine = lens _ridDatabaseEngine (\ s a -> s{_ridDatabaseEngine = a})

-- | The database edition that the recommended reservation supports.
ridDatabaseEdition :: Lens' RDSInstanceDetails (Maybe Text)
ridDatabaseEdition = lens _ridDatabaseEdition (\ s a -> s{_ridDatabaseEdition = a})

instance FromJSON RDSInstanceDetails where
        parseJSON
          = withObject "RDSInstanceDetails"
              (\ x ->
                 RDSInstanceDetails' <$>
                   (x .:? "CurrentGeneration") <*>
                     (x .:? "DeploymentOption")
                     <*> (x .:? "Family")
                     <*> (x .:? "InstanceType")
                     <*> (x .:? "LicenseModel")
                     <*> (x .:? "SizeFlexEligible")
                     <*> (x .:? "Region")
                     <*> (x .:? "DatabaseEngine")
                     <*> (x .:? "DatabaseEdition"))

instance Hashable RDSInstanceDetails where

instance NFData RDSInstanceDetails where

-- | Details about the Amazon Redshift instances that AWS recommends that you purchase.
--
--
--
-- /See:/ 'redshiftInstanceDetails' smart constructor.
data RedshiftInstanceDetails =
  RedshiftInstanceDetails'
    { _rCurrentGeneration :: !(Maybe Bool)
    , _rFamily            :: !(Maybe Text)
    , _rSizeFlexEligible  :: !(Maybe Bool)
    , _rRegion            :: !(Maybe Text)
    , _rNodeType          :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RedshiftInstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rCurrentGeneration' - Whether the recommendation is for a current-generation instance.
--
-- * 'rFamily' - The instance family of the recommended reservation.
--
-- * 'rSizeFlexEligible' - Whether the recommended reservation is size flexible.
--
-- * 'rRegion' - The AWS Region of the recommended reservation.
--
-- * 'rNodeType' - The type of node that AWS recommends.
redshiftInstanceDetails
    :: RedshiftInstanceDetails
redshiftInstanceDetails =
  RedshiftInstanceDetails'
    { _rCurrentGeneration = Nothing
    , _rFamily = Nothing
    , _rSizeFlexEligible = Nothing
    , _rRegion = Nothing
    , _rNodeType = Nothing
    }


-- | Whether the recommendation is for a current-generation instance.
rCurrentGeneration :: Lens' RedshiftInstanceDetails (Maybe Bool)
rCurrentGeneration = lens _rCurrentGeneration (\ s a -> s{_rCurrentGeneration = a})

-- | The instance family of the recommended reservation.
rFamily :: Lens' RedshiftInstanceDetails (Maybe Text)
rFamily = lens _rFamily (\ s a -> s{_rFamily = a})

-- | Whether the recommended reservation is size flexible.
rSizeFlexEligible :: Lens' RedshiftInstanceDetails (Maybe Bool)
rSizeFlexEligible = lens _rSizeFlexEligible (\ s a -> s{_rSizeFlexEligible = a})

-- | The AWS Region of the recommended reservation.
rRegion :: Lens' RedshiftInstanceDetails (Maybe Text)
rRegion = lens _rRegion (\ s a -> s{_rRegion = a})

-- | The type of node that AWS recommends.
rNodeType :: Lens' RedshiftInstanceDetails (Maybe Text)
rNodeType = lens _rNodeType (\ s a -> s{_rNodeType = a})

instance FromJSON RedshiftInstanceDetails where
        parseJSON
          = withObject "RedshiftInstanceDetails"
              (\ x ->
                 RedshiftInstanceDetails' <$>
                   (x .:? "CurrentGeneration") <*> (x .:? "Family") <*>
                     (x .:? "SizeFlexEligible")
                     <*> (x .:? "Region")
                     <*> (x .:? "NodeType"))

instance Hashable RedshiftInstanceDetails where

instance NFData RedshiftInstanceDetails where

-- | The aggregated numbers for your reservation usage.
--
--
--
-- /See:/ 'reservationAggregates' smart constructor.
data ReservationAggregates =
  ReservationAggregates'
    { _raPurchasedHours               :: !(Maybe Text)
    , _raTotalActualHours             :: !(Maybe Text)
    , _raUtilizationPercentage        :: !(Maybe Text)
    , _raTotalAmortizedFee            :: !(Maybe Text)
    , _raUnusedUnits                  :: !(Maybe Text)
    , _raUnusedHours                  :: !(Maybe Text)
    , _raPurchasedUnits               :: !(Maybe Text)
    , _raAmortizedUpfrontFee          :: !(Maybe Text)
    , _raAmortizedRecurringFee        :: !(Maybe Text)
    , _raUtilizationPercentageInUnits :: !(Maybe Text)
    , _raNetRISavings                 :: !(Maybe Text)
    , _raOnDemandCostOfRIHoursUsed    :: !(Maybe Text)
    , _raTotalPotentialRISavings      :: !(Maybe Text)
    , _raTotalActualUnits             :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationAggregates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raPurchasedHours' - How many reservation hours that you purchased.
--
-- * 'raTotalActualHours' - The total number of reservation hours that you used.
--
-- * 'raUtilizationPercentage' - The percentage of reservation time that you used.
--
-- * 'raTotalAmortizedFee' - The total cost of your reservation, amortized over the reservation period.
--
-- * 'raUnusedUnits' - The number of Amazon EC2 reservation hours that you didn't use, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
--
-- * 'raUnusedHours' - The number of reservation hours that you didn't use.
--
-- * 'raPurchasedUnits' - How many Amazon EC2 reservation hours that you purchased, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
--
-- * 'raAmortizedUpfrontFee' - The upfront cost of your reservation, amortized over the reservation period.
--
-- * 'raAmortizedRecurringFee' - The monthly cost of your reservation, amortized over the reservation period.
--
-- * 'raUtilizationPercentageInUnits' - The percentage of Amazon EC2 reservation time that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
--
-- * 'raNetRISavings' - How much you saved due to purchasing and utilizing reservation. AWS calculates this by subtracting @TotalAmortizedFee@ from @OnDemandCostOfRIHoursUsed@ .
--
-- * 'raOnDemandCostOfRIHoursUsed' - How much your reservation would cost if charged On-Demand rates.
--
-- * 'raTotalPotentialRISavings' - How much you could save if you use your entire reservation.
--
-- * 'raTotalActualUnits' - The total number of Amazon EC2 reservation hours that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
reservationAggregates
    :: ReservationAggregates
reservationAggregates =
  ReservationAggregates'
    { _raPurchasedHours = Nothing
    , _raTotalActualHours = Nothing
    , _raUtilizationPercentage = Nothing
    , _raTotalAmortizedFee = Nothing
    , _raUnusedUnits = Nothing
    , _raUnusedHours = Nothing
    , _raPurchasedUnits = Nothing
    , _raAmortizedUpfrontFee = Nothing
    , _raAmortizedRecurringFee = Nothing
    , _raUtilizationPercentageInUnits = Nothing
    , _raNetRISavings = Nothing
    , _raOnDemandCostOfRIHoursUsed = Nothing
    , _raTotalPotentialRISavings = Nothing
    , _raTotalActualUnits = Nothing
    }


-- | How many reservation hours that you purchased.
raPurchasedHours :: Lens' ReservationAggregates (Maybe Text)
raPurchasedHours = lens _raPurchasedHours (\ s a -> s{_raPurchasedHours = a})

-- | The total number of reservation hours that you used.
raTotalActualHours :: Lens' ReservationAggregates (Maybe Text)
raTotalActualHours = lens _raTotalActualHours (\ s a -> s{_raTotalActualHours = a})

-- | The percentage of reservation time that you used.
raUtilizationPercentage :: Lens' ReservationAggregates (Maybe Text)
raUtilizationPercentage = lens _raUtilizationPercentage (\ s a -> s{_raUtilizationPercentage = a})

-- | The total cost of your reservation, amortized over the reservation period.
raTotalAmortizedFee :: Lens' ReservationAggregates (Maybe Text)
raTotalAmortizedFee = lens _raTotalAmortizedFee (\ s a -> s{_raTotalAmortizedFee = a})

-- | The number of Amazon EC2 reservation hours that you didn't use, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
raUnusedUnits :: Lens' ReservationAggregates (Maybe Text)
raUnusedUnits = lens _raUnusedUnits (\ s a -> s{_raUnusedUnits = a})

-- | The number of reservation hours that you didn't use.
raUnusedHours :: Lens' ReservationAggregates (Maybe Text)
raUnusedHours = lens _raUnusedHours (\ s a -> s{_raUnusedHours = a})

-- | How many Amazon EC2 reservation hours that you purchased, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
raPurchasedUnits :: Lens' ReservationAggregates (Maybe Text)
raPurchasedUnits = lens _raPurchasedUnits (\ s a -> s{_raPurchasedUnits = a})

-- | The upfront cost of your reservation, amortized over the reservation period.
raAmortizedUpfrontFee :: Lens' ReservationAggregates (Maybe Text)
raAmortizedUpfrontFee = lens _raAmortizedUpfrontFee (\ s a -> s{_raAmortizedUpfrontFee = a})

-- | The monthly cost of your reservation, amortized over the reservation period.
raAmortizedRecurringFee :: Lens' ReservationAggregates (Maybe Text)
raAmortizedRecurringFee = lens _raAmortizedRecurringFee (\ s a -> s{_raAmortizedRecurringFee = a})

-- | The percentage of Amazon EC2 reservation time that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
raUtilizationPercentageInUnits :: Lens' ReservationAggregates (Maybe Text)
raUtilizationPercentageInUnits = lens _raUtilizationPercentageInUnits (\ s a -> s{_raUtilizationPercentageInUnits = a})

-- | How much you saved due to purchasing and utilizing reservation. AWS calculates this by subtracting @TotalAmortizedFee@ from @OnDemandCostOfRIHoursUsed@ .
raNetRISavings :: Lens' ReservationAggregates (Maybe Text)
raNetRISavings = lens _raNetRISavings (\ s a -> s{_raNetRISavings = a})

-- | How much your reservation would cost if charged On-Demand rates.
raOnDemandCostOfRIHoursUsed :: Lens' ReservationAggregates (Maybe Text)
raOnDemandCostOfRIHoursUsed = lens _raOnDemandCostOfRIHoursUsed (\ s a -> s{_raOnDemandCostOfRIHoursUsed = a})

-- | How much you could save if you use your entire reservation.
raTotalPotentialRISavings :: Lens' ReservationAggregates (Maybe Text)
raTotalPotentialRISavings = lens _raTotalPotentialRISavings (\ s a -> s{_raTotalPotentialRISavings = a})

-- | The total number of Amazon EC2 reservation hours that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
raTotalActualUnits :: Lens' ReservationAggregates (Maybe Text)
raTotalActualUnits = lens _raTotalActualUnits (\ s a -> s{_raTotalActualUnits = a})

instance FromJSON ReservationAggregates where
        parseJSON
          = withObject "ReservationAggregates"
              (\ x ->
                 ReservationAggregates' <$>
                   (x .:? "PurchasedHours") <*>
                     (x .:? "TotalActualHours")
                     <*> (x .:? "UtilizationPercentage")
                     <*> (x .:? "TotalAmortizedFee")
                     <*> (x .:? "UnusedUnits")
                     <*> (x .:? "UnusedHours")
                     <*> (x .:? "PurchasedUnits")
                     <*> (x .:? "AmortizedUpfrontFee")
                     <*> (x .:? "AmortizedRecurringFee")
                     <*> (x .:? "UtilizationPercentageInUnits")
                     <*> (x .:? "NetRISavings")
                     <*> (x .:? "OnDemandCostOfRIHoursUsed")
                     <*> (x .:? "TotalPotentialRISavings")
                     <*> (x .:? "TotalActualUnits"))

instance Hashable ReservationAggregates where

instance NFData ReservationAggregates where

-- | A group of reservations that share a set of attributes.
--
--
--
-- /See:/ 'reservationCoverageGroup' smart constructor.
data ReservationCoverageGroup =
  ReservationCoverageGroup'
    { _rcgCoverage   :: !(Maybe Coverage)
    , _rcgAttributes :: !(Maybe (Map Text Text))
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationCoverageGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcgCoverage' - How much instance usage this group of reservations covered.
--
-- * 'rcgAttributes' - The attributes for this group of reservations.
reservationCoverageGroup
    :: ReservationCoverageGroup
reservationCoverageGroup =
  ReservationCoverageGroup' {_rcgCoverage = Nothing, _rcgAttributes = Nothing}


-- | How much instance usage this group of reservations covered.
rcgCoverage :: Lens' ReservationCoverageGroup (Maybe Coverage)
rcgCoverage = lens _rcgCoverage (\ s a -> s{_rcgCoverage = a})

-- | The attributes for this group of reservations.
rcgAttributes :: Lens' ReservationCoverageGroup (HashMap Text Text)
rcgAttributes = lens _rcgAttributes (\ s a -> s{_rcgAttributes = a}) . _Default . _Map

instance FromJSON ReservationCoverageGroup where
        parseJSON
          = withObject "ReservationCoverageGroup"
              (\ x ->
                 ReservationCoverageGroup' <$>
                   (x .:? "Coverage") <*>
                     (x .:? "Attributes" .!= mempty))

instance Hashable ReservationCoverageGroup where

instance NFData ReservationCoverageGroup where

-- | A specific reservation that AWS recommends for purchase.
--
--
--
-- /See:/ 'reservationPurchaseRecommendation' smart constructor.
data ReservationPurchaseRecommendation =
  ReservationPurchaseRecommendation'
    { _rprTermInYears :: !(Maybe TermInYears)
    , _rprRecommendationSummary :: !(Maybe ReservationPurchaseRecommendationSummary)
    , _rprServiceSpecification :: !(Maybe ServiceSpecification)
    , _rprAccountScope :: !(Maybe AccountScope)
    , _rprRecommendationDetails :: !(Maybe [ReservationPurchaseRecommendationDetail])
    , _rprLookbackPeriodInDays :: !(Maybe LookbackPeriodInDays)
    , _rprPaymentOption :: !(Maybe PaymentOption)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationPurchaseRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprTermInYears' - The term of the reservation that you want recommendations for, in years.
--
-- * 'rprRecommendationSummary' - A summary about the recommended purchase.
--
-- * 'rprServiceSpecification' - Hardware specifications for the service that you want recommendations for.
--
-- * 'rprAccountScope' - The account scope that AWS recommends that you purchase this instance for. For example, you can purchase this reservation for an entire organization in AWS Organizations.
--
-- * 'rprRecommendationDetails' - Details about the recommended purchases.
--
-- * 'rprLookbackPeriodInDays' - How many days of previous usage that AWS considers when making this recommendation.
--
-- * 'rprPaymentOption' - The payment option for the reservation. For example, @AllUpfront@ or @NoUpfront@ .
reservationPurchaseRecommendation
    :: ReservationPurchaseRecommendation
reservationPurchaseRecommendation =
  ReservationPurchaseRecommendation'
    { _rprTermInYears = Nothing
    , _rprRecommendationSummary = Nothing
    , _rprServiceSpecification = Nothing
    , _rprAccountScope = Nothing
    , _rprRecommendationDetails = Nothing
    , _rprLookbackPeriodInDays = Nothing
    , _rprPaymentOption = Nothing
    }


-- | The term of the reservation that you want recommendations for, in years.
rprTermInYears :: Lens' ReservationPurchaseRecommendation (Maybe TermInYears)
rprTermInYears = lens _rprTermInYears (\ s a -> s{_rprTermInYears = a})

-- | A summary about the recommended purchase.
rprRecommendationSummary :: Lens' ReservationPurchaseRecommendation (Maybe ReservationPurchaseRecommendationSummary)
rprRecommendationSummary = lens _rprRecommendationSummary (\ s a -> s{_rprRecommendationSummary = a})

-- | Hardware specifications for the service that you want recommendations for.
rprServiceSpecification :: Lens' ReservationPurchaseRecommendation (Maybe ServiceSpecification)
rprServiceSpecification = lens _rprServiceSpecification (\ s a -> s{_rprServiceSpecification = a})

-- | The account scope that AWS recommends that you purchase this instance for. For example, you can purchase this reservation for an entire organization in AWS Organizations.
rprAccountScope :: Lens' ReservationPurchaseRecommendation (Maybe AccountScope)
rprAccountScope = lens _rprAccountScope (\ s a -> s{_rprAccountScope = a})

-- | Details about the recommended purchases.
rprRecommendationDetails :: Lens' ReservationPurchaseRecommendation [ReservationPurchaseRecommendationDetail]
rprRecommendationDetails = lens _rprRecommendationDetails (\ s a -> s{_rprRecommendationDetails = a}) . _Default . _Coerce

-- | How many days of previous usage that AWS considers when making this recommendation.
rprLookbackPeriodInDays :: Lens' ReservationPurchaseRecommendation (Maybe LookbackPeriodInDays)
rprLookbackPeriodInDays = lens _rprLookbackPeriodInDays (\ s a -> s{_rprLookbackPeriodInDays = a})

-- | The payment option for the reservation. For example, @AllUpfront@ or @NoUpfront@ .
rprPaymentOption :: Lens' ReservationPurchaseRecommendation (Maybe PaymentOption)
rprPaymentOption = lens _rprPaymentOption (\ s a -> s{_rprPaymentOption = a})

instance FromJSON ReservationPurchaseRecommendation
         where
        parseJSON
          = withObject "ReservationPurchaseRecommendation"
              (\ x ->
                 ReservationPurchaseRecommendation' <$>
                   (x .:? "TermInYears") <*>
                     (x .:? "RecommendationSummary")
                     <*> (x .:? "ServiceSpecification")
                     <*> (x .:? "AccountScope")
                     <*> (x .:? "RecommendationDetails" .!= mempty)
                     <*> (x .:? "LookbackPeriodInDays")
                     <*> (x .:? "PaymentOption"))

instance Hashable ReservationPurchaseRecommendation
         where

instance NFData ReservationPurchaseRecommendation
         where

-- | Details about your recommended reservation purchase.
--
--
--
-- /See:/ 'reservationPurchaseRecommendationDetail' smart constructor.
data ReservationPurchaseRecommendationDetail =
  ReservationPurchaseRecommendationDetail'
    { _rprdMaximumNormalizedUnitsUsedPerHour         :: !(Maybe Text)
    , _rprdRecurringStandardMonthlyCost              :: !(Maybe Text)
    , _rprdAverageNormalizedUnitsUsedPerHour         :: !(Maybe Text)
    , _rprdCurrencyCode                              :: !(Maybe Text)
    , _rprdEstimatedMonthlySavingsPercentage         :: !(Maybe Text)
    , _rprdRecommendedNormalizedUnitsToPurchase      :: !(Maybe Text)
    , _rprdAverageUtilization                        :: !(Maybe Text)
    , _rprdAccountId                                 :: !(Maybe Text)
    , _rprdEstimatedMonthlySavingsAmount             :: !(Maybe Text)
    , _rprdUpfrontCost                               :: !(Maybe Text)
    , _rprdMinimumNormalizedUnitsUsedPerHour         :: !(Maybe Text)
    , _rprdEstimatedMonthlyOnDemandCost              :: !(Maybe Text)
    , _rprdRecommendedNumberOfInstancesToPurchase    :: !(Maybe Text)
    , _rprdMaximumNumberOfInstancesUsedPerHour       :: !(Maybe Text)
    , _rprdEstimatedReservationCostForLookbackPeriod :: !(Maybe Text)
    , _rprdInstanceDetails                           :: !(Maybe InstanceDetails)
    , _rprdAverageNumberOfInstancesUsedPerHour       :: !(Maybe Text)
    , _rprdMinimumNumberOfInstancesUsedPerHour       :: !(Maybe Text)
    , _rprdEstimatedBreakEvenInMonths                :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationPurchaseRecommendationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprdMaximumNormalizedUnitsUsedPerHour' - The maximum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdRecurringStandardMonthlyCost' - How much purchasing this instance costs you on a monthly basis.
--
-- * 'rprdAverageNormalizedUnitsUsedPerHour' - The average number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdCurrencyCode' - The currency code that AWS used to calculate the costs for this instance.
--
-- * 'rprdEstimatedMonthlySavingsPercentage' - How much AWS estimates that this specific recommendation could save you in a month, as a percentage of your overall costs.
--
-- * 'rprdRecommendedNormalizedUnitsToPurchase' - The number of normalized units that AWS recommends that you purchase.
--
-- * 'rprdAverageUtilization' - The average utilization of your instances. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdAccountId' - The account that this RI recommendation is for.
--
-- * 'rprdEstimatedMonthlySavingsAmount' - How much AWS estimates that this specific recommendation could save you in a month.
--
-- * 'rprdUpfrontCost' - How much purchasing this instance costs you upfront.
--
-- * 'rprdMinimumNormalizedUnitsUsedPerHour' - The minimum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdEstimatedMonthlyOnDemandCost' - How much AWS estimates that you spend on On-Demand Instances in a month.
--
-- * 'rprdRecommendedNumberOfInstancesToPurchase' - The number of instances that AWS recommends that you purchase.
--
-- * 'rprdMaximumNumberOfInstancesUsedPerHour' - The maximum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdEstimatedReservationCostForLookbackPeriod' - How much AWS estimates that you would have spent for all usage during the specified historical period if you had a reservation.
--
-- * 'rprdInstanceDetails' - Details about the instances that AWS recommends that you purchase.
--
-- * 'rprdAverageNumberOfInstancesUsedPerHour' - The average number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdMinimumNumberOfInstancesUsedPerHour' - The minimum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdEstimatedBreakEvenInMonths' - How long AWS estimates that it takes for this instance to start saving you money, in months.
reservationPurchaseRecommendationDetail
    :: ReservationPurchaseRecommendationDetail
reservationPurchaseRecommendationDetail =
  ReservationPurchaseRecommendationDetail'
    { _rprdMaximumNormalizedUnitsUsedPerHour = Nothing
    , _rprdRecurringStandardMonthlyCost = Nothing
    , _rprdAverageNormalizedUnitsUsedPerHour = Nothing
    , _rprdCurrencyCode = Nothing
    , _rprdEstimatedMonthlySavingsPercentage = Nothing
    , _rprdRecommendedNormalizedUnitsToPurchase = Nothing
    , _rprdAverageUtilization = Nothing
    , _rprdAccountId = Nothing
    , _rprdEstimatedMonthlySavingsAmount = Nothing
    , _rprdUpfrontCost = Nothing
    , _rprdMinimumNormalizedUnitsUsedPerHour = Nothing
    , _rprdEstimatedMonthlyOnDemandCost = Nothing
    , _rprdRecommendedNumberOfInstancesToPurchase = Nothing
    , _rprdMaximumNumberOfInstancesUsedPerHour = Nothing
    , _rprdEstimatedReservationCostForLookbackPeriod = Nothing
    , _rprdInstanceDetails = Nothing
    , _rprdAverageNumberOfInstancesUsedPerHour = Nothing
    , _rprdMinimumNumberOfInstancesUsedPerHour = Nothing
    , _rprdEstimatedBreakEvenInMonths = Nothing
    }


-- | The maximum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdMaximumNormalizedUnitsUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdMaximumNormalizedUnitsUsedPerHour = lens _rprdMaximumNormalizedUnitsUsedPerHour (\ s a -> s{_rprdMaximumNormalizedUnitsUsedPerHour = a})

-- | How much purchasing this instance costs you on a monthly basis.
rprdRecurringStandardMonthlyCost :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdRecurringStandardMonthlyCost = lens _rprdRecurringStandardMonthlyCost (\ s a -> s{_rprdRecurringStandardMonthlyCost = a})

-- | The average number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdAverageNormalizedUnitsUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdAverageNormalizedUnitsUsedPerHour = lens _rprdAverageNormalizedUnitsUsedPerHour (\ s a -> s{_rprdAverageNormalizedUnitsUsedPerHour = a})

-- | The currency code that AWS used to calculate the costs for this instance.
rprdCurrencyCode :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdCurrencyCode = lens _rprdCurrencyCode (\ s a -> s{_rprdCurrencyCode = a})

-- | How much AWS estimates that this specific recommendation could save you in a month, as a percentage of your overall costs.
rprdEstimatedMonthlySavingsPercentage :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedMonthlySavingsPercentage = lens _rprdEstimatedMonthlySavingsPercentage (\ s a -> s{_rprdEstimatedMonthlySavingsPercentage = a})

-- | The number of normalized units that AWS recommends that you purchase.
rprdRecommendedNormalizedUnitsToPurchase :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdRecommendedNormalizedUnitsToPurchase = lens _rprdRecommendedNormalizedUnitsToPurchase (\ s a -> s{_rprdRecommendedNormalizedUnitsToPurchase = a})

-- | The average utilization of your instances. AWS uses this to calculate your recommended reservation purchases.
rprdAverageUtilization :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdAverageUtilization = lens _rprdAverageUtilization (\ s a -> s{_rprdAverageUtilization = a})

-- | The account that this RI recommendation is for.
rprdAccountId :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdAccountId = lens _rprdAccountId (\ s a -> s{_rprdAccountId = a})

-- | How much AWS estimates that this specific recommendation could save you in a month.
rprdEstimatedMonthlySavingsAmount :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedMonthlySavingsAmount = lens _rprdEstimatedMonthlySavingsAmount (\ s a -> s{_rprdEstimatedMonthlySavingsAmount = a})

-- | How much purchasing this instance costs you upfront.
rprdUpfrontCost :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdUpfrontCost = lens _rprdUpfrontCost (\ s a -> s{_rprdUpfrontCost = a})

-- | The minimum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdMinimumNormalizedUnitsUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdMinimumNormalizedUnitsUsedPerHour = lens _rprdMinimumNormalizedUnitsUsedPerHour (\ s a -> s{_rprdMinimumNormalizedUnitsUsedPerHour = a})

-- | How much AWS estimates that you spend on On-Demand Instances in a month.
rprdEstimatedMonthlyOnDemandCost :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedMonthlyOnDemandCost = lens _rprdEstimatedMonthlyOnDemandCost (\ s a -> s{_rprdEstimatedMonthlyOnDemandCost = a})

-- | The number of instances that AWS recommends that you purchase.
rprdRecommendedNumberOfInstancesToPurchase :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdRecommendedNumberOfInstancesToPurchase = lens _rprdRecommendedNumberOfInstancesToPurchase (\ s a -> s{_rprdRecommendedNumberOfInstancesToPurchase = a})

-- | The maximum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdMaximumNumberOfInstancesUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdMaximumNumberOfInstancesUsedPerHour = lens _rprdMaximumNumberOfInstancesUsedPerHour (\ s a -> s{_rprdMaximumNumberOfInstancesUsedPerHour = a})

-- | How much AWS estimates that you would have spent for all usage during the specified historical period if you had a reservation.
rprdEstimatedReservationCostForLookbackPeriod :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedReservationCostForLookbackPeriod = lens _rprdEstimatedReservationCostForLookbackPeriod (\ s a -> s{_rprdEstimatedReservationCostForLookbackPeriod = a})

-- | Details about the instances that AWS recommends that you purchase.
rprdInstanceDetails :: Lens' ReservationPurchaseRecommendationDetail (Maybe InstanceDetails)
rprdInstanceDetails = lens _rprdInstanceDetails (\ s a -> s{_rprdInstanceDetails = a})

-- | The average number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdAverageNumberOfInstancesUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdAverageNumberOfInstancesUsedPerHour = lens _rprdAverageNumberOfInstancesUsedPerHour (\ s a -> s{_rprdAverageNumberOfInstancesUsedPerHour = a})

-- | The minimum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdMinimumNumberOfInstancesUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdMinimumNumberOfInstancesUsedPerHour = lens _rprdMinimumNumberOfInstancesUsedPerHour (\ s a -> s{_rprdMinimumNumberOfInstancesUsedPerHour = a})

-- | How long AWS estimates that it takes for this instance to start saving you money, in months.
rprdEstimatedBreakEvenInMonths :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedBreakEvenInMonths = lens _rprdEstimatedBreakEvenInMonths (\ s a -> s{_rprdEstimatedBreakEvenInMonths = a})

instance FromJSON
           ReservationPurchaseRecommendationDetail
         where
        parseJSON
          = withObject
              "ReservationPurchaseRecommendationDetail"
              (\ x ->
                 ReservationPurchaseRecommendationDetail' <$>
                   (x .:? "MaximumNormalizedUnitsUsedPerHour") <*>
                     (x .:? "RecurringStandardMonthlyCost")
                     <*> (x .:? "AverageNormalizedUnitsUsedPerHour")
                     <*> (x .:? "CurrencyCode")
                     <*> (x .:? "EstimatedMonthlySavingsPercentage")
                     <*> (x .:? "RecommendedNormalizedUnitsToPurchase")
                     <*> (x .:? "AverageUtilization")
                     <*> (x .:? "AccountId")
                     <*> (x .:? "EstimatedMonthlySavingsAmount")
                     <*> (x .:? "UpfrontCost")
                     <*> (x .:? "MinimumNormalizedUnitsUsedPerHour")
                     <*> (x .:? "EstimatedMonthlyOnDemandCost")
                     <*> (x .:? "RecommendedNumberOfInstancesToPurchase")
                     <*> (x .:? "MaximumNumberOfInstancesUsedPerHour")
                     <*>
                     (x .:? "EstimatedReservationCostForLookbackPeriod")
                     <*> (x .:? "InstanceDetails")
                     <*> (x .:? "AverageNumberOfInstancesUsedPerHour")
                     <*> (x .:? "MinimumNumberOfInstancesUsedPerHour")
                     <*> (x .:? "EstimatedBreakEvenInMonths"))

instance Hashable
           ReservationPurchaseRecommendationDetail
         where

instance NFData
           ReservationPurchaseRecommendationDetail
         where

-- | Information about this specific recommendation, such as the timestamp for when AWS made a specific recommendation.
--
--
--
-- /See:/ 'reservationPurchaseRecommendationMetadata' smart constructor.
data ReservationPurchaseRecommendationMetadata =
  ReservationPurchaseRecommendationMetadata'
    { _rprmRecommendationId    :: !(Maybe Text)
    , _rprmGenerationTimestamp :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationPurchaseRecommendationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprmRecommendationId' - The ID for this specific recommendation.
--
-- * 'rprmGenerationTimestamp' - The timestamp for when AWS made this recommendation.
reservationPurchaseRecommendationMetadata
    :: ReservationPurchaseRecommendationMetadata
reservationPurchaseRecommendationMetadata =
  ReservationPurchaseRecommendationMetadata'
    {_rprmRecommendationId = Nothing, _rprmGenerationTimestamp = Nothing}


-- | The ID for this specific recommendation.
rprmRecommendationId :: Lens' ReservationPurchaseRecommendationMetadata (Maybe Text)
rprmRecommendationId = lens _rprmRecommendationId (\ s a -> s{_rprmRecommendationId = a})

-- | The timestamp for when AWS made this recommendation.
rprmGenerationTimestamp :: Lens' ReservationPurchaseRecommendationMetadata (Maybe Text)
rprmGenerationTimestamp = lens _rprmGenerationTimestamp (\ s a -> s{_rprmGenerationTimestamp = a})

instance FromJSON
           ReservationPurchaseRecommendationMetadata
         where
        parseJSON
          = withObject
              "ReservationPurchaseRecommendationMetadata"
              (\ x ->
                 ReservationPurchaseRecommendationMetadata' <$>
                   (x .:? "RecommendationId") <*>
                     (x .:? "GenerationTimestamp"))

instance Hashable
           ReservationPurchaseRecommendationMetadata
         where

instance NFData
           ReservationPurchaseRecommendationMetadata
         where

-- | A summary about this recommendation, such as the currency code, the amount that AWS estimates that you could save, and the total amount of reservation to purchase.
--
--
--
-- /See:/ 'reservationPurchaseRecommendationSummary' smart constructor.
data ReservationPurchaseRecommendationSummary =
  ReservationPurchaseRecommendationSummary'
    { _rprsCurrencyCode                           :: !(Maybe Text)
    , _rprsTotalEstimatedMonthlySavingsPercentage :: !(Maybe Text)
    , _rprsTotalEstimatedMonthlySavingsAmount     :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationPurchaseRecommendationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprsCurrencyCode' - The currency code used for this recommendation.
--
-- * 'rprsTotalEstimatedMonthlySavingsPercentage' - The total amount that AWS estimates that this recommendation could save you in a month, as a percentage of your costs.
--
-- * 'rprsTotalEstimatedMonthlySavingsAmount' - The total amount that AWS estimates that this recommendation could save you in a month.
reservationPurchaseRecommendationSummary
    :: ReservationPurchaseRecommendationSummary
reservationPurchaseRecommendationSummary =
  ReservationPurchaseRecommendationSummary'
    { _rprsCurrencyCode = Nothing
    , _rprsTotalEstimatedMonthlySavingsPercentage = Nothing
    , _rprsTotalEstimatedMonthlySavingsAmount = Nothing
    }


-- | The currency code used for this recommendation.
rprsCurrencyCode :: Lens' ReservationPurchaseRecommendationSummary (Maybe Text)
rprsCurrencyCode = lens _rprsCurrencyCode (\ s a -> s{_rprsCurrencyCode = a})

-- | The total amount that AWS estimates that this recommendation could save you in a month, as a percentage of your costs.
rprsTotalEstimatedMonthlySavingsPercentage :: Lens' ReservationPurchaseRecommendationSummary (Maybe Text)
rprsTotalEstimatedMonthlySavingsPercentage = lens _rprsTotalEstimatedMonthlySavingsPercentage (\ s a -> s{_rprsTotalEstimatedMonthlySavingsPercentage = a})

-- | The total amount that AWS estimates that this recommendation could save you in a month.
rprsTotalEstimatedMonthlySavingsAmount :: Lens' ReservationPurchaseRecommendationSummary (Maybe Text)
rprsTotalEstimatedMonthlySavingsAmount = lens _rprsTotalEstimatedMonthlySavingsAmount (\ s a -> s{_rprsTotalEstimatedMonthlySavingsAmount = a})

instance FromJSON
           ReservationPurchaseRecommendationSummary
         where
        parseJSON
          = withObject
              "ReservationPurchaseRecommendationSummary"
              (\ x ->
                 ReservationPurchaseRecommendationSummary' <$>
                   (x .:? "CurrencyCode") <*>
                     (x .:? "TotalEstimatedMonthlySavingsPercentage")
                     <*> (x .:? "TotalEstimatedMonthlySavingsAmount"))

instance Hashable
           ReservationPurchaseRecommendationSummary
         where

instance NFData
           ReservationPurchaseRecommendationSummary
         where

-- | A group of reservations that share a set of attributes.
--
--
--
-- /See:/ 'reservationUtilizationGroup' smart constructor.
data ReservationUtilizationGroup =
  ReservationUtilizationGroup'
    { _rugValue       :: !(Maybe Text)
    , _rugKey         :: !(Maybe Text)
    , _rugAttributes  :: !(Maybe (Map Text Text))
    , _rugUtilization :: !(Maybe ReservationAggregates)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationUtilizationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rugValue' - The value of a specific reservation attribute.
--
-- * 'rugKey' - The key for a specific reservation attribute.
--
-- * 'rugAttributes' - The attributes for this group of reservations.
--
-- * 'rugUtilization' - How much you used this group of reservations.
reservationUtilizationGroup
    :: ReservationUtilizationGroup
reservationUtilizationGroup =
  ReservationUtilizationGroup'
    { _rugValue = Nothing
    , _rugKey = Nothing
    , _rugAttributes = Nothing
    , _rugUtilization = Nothing
    }


-- | The value of a specific reservation attribute.
rugValue :: Lens' ReservationUtilizationGroup (Maybe Text)
rugValue = lens _rugValue (\ s a -> s{_rugValue = a})

-- | The key for a specific reservation attribute.
rugKey :: Lens' ReservationUtilizationGroup (Maybe Text)
rugKey = lens _rugKey (\ s a -> s{_rugKey = a})

-- | The attributes for this group of reservations.
rugAttributes :: Lens' ReservationUtilizationGroup (HashMap Text Text)
rugAttributes = lens _rugAttributes (\ s a -> s{_rugAttributes = a}) . _Default . _Map

-- | How much you used this group of reservations.
rugUtilization :: Lens' ReservationUtilizationGroup (Maybe ReservationAggregates)
rugUtilization = lens _rugUtilization (\ s a -> s{_rugUtilization = a})

instance FromJSON ReservationUtilizationGroup where
        parseJSON
          = withObject "ReservationUtilizationGroup"
              (\ x ->
                 ReservationUtilizationGroup' <$>
                   (x .:? "Value") <*> (x .:? "Key") <*>
                     (x .:? "Attributes" .!= mempty)
                     <*> (x .:? "Utilization"))

instance Hashable ReservationUtilizationGroup where

instance NFData ReservationUtilizationGroup where

-- | Details on the resource.
--
--
--
-- /See:/ 'resourceDetails' smart constructor.
newtype ResourceDetails =
  ResourceDetails'
    { _rdEC2ResourceDetails :: Maybe EC2ResourceDetails
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdEC2ResourceDetails' - Details on the Amazon EC2 resource.
resourceDetails
    :: ResourceDetails
resourceDetails = ResourceDetails' {_rdEC2ResourceDetails = Nothing}


-- | Details on the Amazon EC2 resource.
rdEC2ResourceDetails :: Lens' ResourceDetails (Maybe EC2ResourceDetails)
rdEC2ResourceDetails = lens _rdEC2ResourceDetails (\ s a -> s{_rdEC2ResourceDetails = a})

instance FromJSON ResourceDetails where
        parseJSON
          = withObject "ResourceDetails"
              (\ x ->
                 ResourceDetails' <$> (x .:? "EC2ResourceDetails"))

instance Hashable ResourceDetails where

instance NFData ResourceDetails where

-- | Resource utilization of current resource.
--
--
--
-- /See:/ 'resourceUtilization' smart constructor.
newtype ResourceUtilization =
  ResourceUtilization'
    { _ruEC2ResourceUtilization :: Maybe EC2ResourceUtilization
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruEC2ResourceUtilization' - Utilization of current Amazon EC2 Instance
resourceUtilization
    :: ResourceUtilization
resourceUtilization = ResourceUtilization' {_ruEC2ResourceUtilization = Nothing}


-- | Utilization of current Amazon EC2 Instance
ruEC2ResourceUtilization :: Lens' ResourceUtilization (Maybe EC2ResourceUtilization)
ruEC2ResourceUtilization = lens _ruEC2ResourceUtilization (\ s a -> s{_ruEC2ResourceUtilization = a})

instance FromJSON ResourceUtilization where
        parseJSON
          = withObject "ResourceUtilization"
              (\ x ->
                 ResourceUtilization' <$>
                   (x .:? "EC2ResourceUtilization"))

instance Hashable ResourceUtilization where

instance NFData ResourceUtilization where

-- | The result that is associated with a time period.
--
--
--
-- /See:/ 'resultByTime' smart constructor.
data ResultByTime =
  ResultByTime'
    { _rbtGroups     :: !(Maybe [Group])
    , _rbtTimePeriod :: !(Maybe DateInterval)
    , _rbtTotal      :: !(Maybe (Map Text MetricValue))
    , _rbtEstimated  :: !(Maybe Bool)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultByTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbtGroups' - The groups that this time period includes.
--
-- * 'rbtTimePeriod' - The time period that the result covers.
--
-- * 'rbtTotal' - The total amount of cost or usage accrued during the time period.
--
-- * 'rbtEstimated' - Whether the result is estimated.
resultByTime
    :: ResultByTime
resultByTime =
  ResultByTime'
    { _rbtGroups = Nothing
    , _rbtTimePeriod = Nothing
    , _rbtTotal = Nothing
    , _rbtEstimated = Nothing
    }


-- | The groups that this time period includes.
rbtGroups :: Lens' ResultByTime [Group]
rbtGroups = lens _rbtGroups (\ s a -> s{_rbtGroups = a}) . _Default . _Coerce

-- | The time period that the result covers.
rbtTimePeriod :: Lens' ResultByTime (Maybe DateInterval)
rbtTimePeriod = lens _rbtTimePeriod (\ s a -> s{_rbtTimePeriod = a})

-- | The total amount of cost or usage accrued during the time period.
rbtTotal :: Lens' ResultByTime (HashMap Text MetricValue)
rbtTotal = lens _rbtTotal (\ s a -> s{_rbtTotal = a}) . _Default . _Map

-- | Whether the result is estimated.
rbtEstimated :: Lens' ResultByTime (Maybe Bool)
rbtEstimated = lens _rbtEstimated (\ s a -> s{_rbtEstimated = a})

instance FromJSON ResultByTime where
        parseJSON
          = withObject "ResultByTime"
              (\ x ->
                 ResultByTime' <$>
                   (x .:? "Groups" .!= mempty) <*> (x .:? "TimePeriod")
                     <*> (x .:? "Total" .!= mempty)
                     <*> (x .:? "Estimated"))

instance Hashable ResultByTime where

instance NFData ResultByTime where

-- | Recommendations to rightsize resources.
--
--
--
-- /See:/ 'rightsizingRecommendation' smart constructor.
data RightsizingRecommendation =
  RightsizingRecommendation'
    { _rrAccountId                     :: !(Maybe Text)
    , _rrModifyRecommendationDetail    :: !(Maybe ModifyRecommendationDetail)
    , _rrCurrentInstance               :: !(Maybe CurrentInstance)
    , _rrRightsizingType               :: !(Maybe RightsizingType)
    , _rrTerminateRecommendationDetail :: !(Maybe TerminateRecommendationDetail)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RightsizingRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrAccountId' - The account that this recommendation is for.
--
-- * 'rrModifyRecommendationDetail' - Details for modification recommendations.
--
-- * 'rrCurrentInstance' - Context regarding the current instance.
--
-- * 'rrRightsizingType' - Recommendation to either terminate or modify the resource.
--
-- * 'rrTerminateRecommendationDetail' - Details for termination recommendations.
rightsizingRecommendation
    :: RightsizingRecommendation
rightsizingRecommendation =
  RightsizingRecommendation'
    { _rrAccountId = Nothing
    , _rrModifyRecommendationDetail = Nothing
    , _rrCurrentInstance = Nothing
    , _rrRightsizingType = Nothing
    , _rrTerminateRecommendationDetail = Nothing
    }


-- | The account that this recommendation is for.
rrAccountId :: Lens' RightsizingRecommendation (Maybe Text)
rrAccountId = lens _rrAccountId (\ s a -> s{_rrAccountId = a})

-- | Details for modification recommendations.
rrModifyRecommendationDetail :: Lens' RightsizingRecommendation (Maybe ModifyRecommendationDetail)
rrModifyRecommendationDetail = lens _rrModifyRecommendationDetail (\ s a -> s{_rrModifyRecommendationDetail = a})

-- | Context regarding the current instance.
rrCurrentInstance :: Lens' RightsizingRecommendation (Maybe CurrentInstance)
rrCurrentInstance = lens _rrCurrentInstance (\ s a -> s{_rrCurrentInstance = a})

-- | Recommendation to either terminate or modify the resource.
rrRightsizingType :: Lens' RightsizingRecommendation (Maybe RightsizingType)
rrRightsizingType = lens _rrRightsizingType (\ s a -> s{_rrRightsizingType = a})

-- | Details for termination recommendations.
rrTerminateRecommendationDetail :: Lens' RightsizingRecommendation (Maybe TerminateRecommendationDetail)
rrTerminateRecommendationDetail = lens _rrTerminateRecommendationDetail (\ s a -> s{_rrTerminateRecommendationDetail = a})

instance FromJSON RightsizingRecommendation where
        parseJSON
          = withObject "RightsizingRecommendation"
              (\ x ->
                 RightsizingRecommendation' <$>
                   (x .:? "AccountId") <*>
                     (x .:? "ModifyRecommendationDetail")
                     <*> (x .:? "CurrentInstance")
                     <*> (x .:? "RightsizingType")
                     <*> (x .:? "TerminateRecommendationDetail"))

instance Hashable RightsizingRecommendation where

instance NFData RightsizingRecommendation where

-- | Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or niether.
--
--
--
-- /See:/ 'rightsizingRecommendationConfiguration' smart constructor.
data RightsizingRecommendationConfiguration =
  RightsizingRecommendationConfiguration'
    { _rrcRecommendationTarget :: !RecommendationTarget
    , _rrcBenefitsConsidered   :: !Bool
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RightsizingRecommendationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrcRecommendationTarget' - The option to see recommendations within the same instance family, or recommendations for instances across other families. The default value is @SAME_INSTANCE_FAMILY@ .
--
-- * 'rrcBenefitsConsidered' - The option to consider RI or Savings Plans discount benefits in your savings calculation. The default value is @TRUE@ .
rightsizingRecommendationConfiguration
    :: RecommendationTarget -- ^ 'rrcRecommendationTarget'
    -> Bool -- ^ 'rrcBenefitsConsidered'
    -> RightsizingRecommendationConfiguration
rightsizingRecommendationConfiguration pRecommendationTarget_ pBenefitsConsidered_ =
  RightsizingRecommendationConfiguration'
    { _rrcRecommendationTarget = pRecommendationTarget_
    , _rrcBenefitsConsidered = pBenefitsConsidered_
    }


-- | The option to see recommendations within the same instance family, or recommendations for instances across other families. The default value is @SAME_INSTANCE_FAMILY@ .
rrcRecommendationTarget :: Lens' RightsizingRecommendationConfiguration RecommendationTarget
rrcRecommendationTarget = lens _rrcRecommendationTarget (\ s a -> s{_rrcRecommendationTarget = a})

-- | The option to consider RI or Savings Plans discount benefits in your savings calculation. The default value is @TRUE@ .
rrcBenefitsConsidered :: Lens' RightsizingRecommendationConfiguration Bool
rrcBenefitsConsidered = lens _rrcBenefitsConsidered (\ s a -> s{_rrcBenefitsConsidered = a})

instance FromJSON
           RightsizingRecommendationConfiguration
         where
        parseJSON
          = withObject "RightsizingRecommendationConfiguration"
              (\ x ->
                 RightsizingRecommendationConfiguration' <$>
                   (x .: "RecommendationTarget") <*>
                     (x .: "BenefitsConsidered"))

instance Hashable
           RightsizingRecommendationConfiguration
         where

instance NFData
           RightsizingRecommendationConfiguration
         where

instance ToJSON
           RightsizingRecommendationConfiguration
         where
        toJSON RightsizingRecommendationConfiguration'{..}
          = object
              (catMaybes
                 [Just
                    ("RecommendationTarget" .= _rrcRecommendationTarget),
                  Just
                    ("BenefitsConsidered" .= _rrcBenefitsConsidered)])

-- | Metadata for this recommendation set.
--
--
--
-- /See:/ 'rightsizingRecommendationMetadata' smart constructor.
data RightsizingRecommendationMetadata =
  RightsizingRecommendationMetadata'
    { _rrmRecommendationId     :: !(Maybe Text)
    , _rrmGenerationTimestamp  :: !(Maybe Text)
    , _rrmLookbackPeriodInDays :: !(Maybe LookbackPeriodInDays)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RightsizingRecommendationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrmRecommendationId' - The ID for this specific recommendation.
--
-- * 'rrmGenerationTimestamp' - The time stamp for when Amazon Web Services made this recommendation.
--
-- * 'rrmLookbackPeriodInDays' - How many days of previous usage that Amazon Web Services considers when making this recommendation.
rightsizingRecommendationMetadata
    :: RightsizingRecommendationMetadata
rightsizingRecommendationMetadata =
  RightsizingRecommendationMetadata'
    { _rrmRecommendationId = Nothing
    , _rrmGenerationTimestamp = Nothing
    , _rrmLookbackPeriodInDays = Nothing
    }


-- | The ID for this specific recommendation.
rrmRecommendationId :: Lens' RightsizingRecommendationMetadata (Maybe Text)
rrmRecommendationId = lens _rrmRecommendationId (\ s a -> s{_rrmRecommendationId = a})

-- | The time stamp for when Amazon Web Services made this recommendation.
rrmGenerationTimestamp :: Lens' RightsizingRecommendationMetadata (Maybe Text)
rrmGenerationTimestamp = lens _rrmGenerationTimestamp (\ s a -> s{_rrmGenerationTimestamp = a})

-- | How many days of previous usage that Amazon Web Services considers when making this recommendation.
rrmLookbackPeriodInDays :: Lens' RightsizingRecommendationMetadata (Maybe LookbackPeriodInDays)
rrmLookbackPeriodInDays = lens _rrmLookbackPeriodInDays (\ s a -> s{_rrmLookbackPeriodInDays = a})

instance FromJSON RightsizingRecommendationMetadata
         where
        parseJSON
          = withObject "RightsizingRecommendationMetadata"
              (\ x ->
                 RightsizingRecommendationMetadata' <$>
                   (x .:? "RecommendationId") <*>
                     (x .:? "GenerationTimestamp")
                     <*> (x .:? "LookbackPeriodInDays"))

instance Hashable RightsizingRecommendationMetadata
         where

instance NFData RightsizingRecommendationMetadata
         where

-- | Summary of rightsizing recommendations
--
--
--
-- /See:/ 'rightsizingRecommendationSummary' smart constructor.
data RightsizingRecommendationSummary =
  RightsizingRecommendationSummary'
    { _rrsSavingsPercentage                  :: !(Maybe Text)
    , _rrsSavingsCurrencyCode                :: !(Maybe Text)
    , _rrsTotalRecommendationCount           :: !(Maybe Text)
    , _rrsEstimatedTotalMonthlySavingsAmount :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RightsizingRecommendationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsSavingsPercentage' - Savings percentage based on the recommended modifications, relative to the total On Demand costs associated with these instances.
--
-- * 'rrsSavingsCurrencyCode' - The currency code that Amazon Web Services used to calculate the savings.
--
-- * 'rrsTotalRecommendationCount' - Total number of instance recommendations.
--
-- * 'rrsEstimatedTotalMonthlySavingsAmount' - Estimated total savings resulting from modifications, on a monthly basis.
rightsizingRecommendationSummary
    :: RightsizingRecommendationSummary
rightsizingRecommendationSummary =
  RightsizingRecommendationSummary'
    { _rrsSavingsPercentage = Nothing
    , _rrsSavingsCurrencyCode = Nothing
    , _rrsTotalRecommendationCount = Nothing
    , _rrsEstimatedTotalMonthlySavingsAmount = Nothing
    }


-- | Savings percentage based on the recommended modifications, relative to the total On Demand costs associated with these instances.
rrsSavingsPercentage :: Lens' RightsizingRecommendationSummary (Maybe Text)
rrsSavingsPercentage = lens _rrsSavingsPercentage (\ s a -> s{_rrsSavingsPercentage = a})

-- | The currency code that Amazon Web Services used to calculate the savings.
rrsSavingsCurrencyCode :: Lens' RightsizingRecommendationSummary (Maybe Text)
rrsSavingsCurrencyCode = lens _rrsSavingsCurrencyCode (\ s a -> s{_rrsSavingsCurrencyCode = a})

-- | Total number of instance recommendations.
rrsTotalRecommendationCount :: Lens' RightsizingRecommendationSummary (Maybe Text)
rrsTotalRecommendationCount = lens _rrsTotalRecommendationCount (\ s a -> s{_rrsTotalRecommendationCount = a})

-- | Estimated total savings resulting from modifications, on a monthly basis.
rrsEstimatedTotalMonthlySavingsAmount :: Lens' RightsizingRecommendationSummary (Maybe Text)
rrsEstimatedTotalMonthlySavingsAmount = lens _rrsEstimatedTotalMonthlySavingsAmount (\ s a -> s{_rrsEstimatedTotalMonthlySavingsAmount = a})

instance FromJSON RightsizingRecommendationSummary
         where
        parseJSON
          = withObject "RightsizingRecommendationSummary"
              (\ x ->
                 RightsizingRecommendationSummary' <$>
                   (x .:? "SavingsPercentage") <*>
                     (x .:? "SavingsCurrencyCode")
                     <*> (x .:? "TotalRecommendationCount")
                     <*> (x .:? "EstimatedTotalMonthlySavingsAmount"))

instance Hashable RightsizingRecommendationSummary
         where

instance NFData RightsizingRecommendationSummary
         where

-- | The amortized amount of Savings Plans purchased in a specific account during a specific time interval.
--
--
--
-- /See:/ 'savingsPlansAmortizedCommitment' smart constructor.
data SavingsPlansAmortizedCommitment =
  SavingsPlansAmortizedCommitment'
    { _spacAmortizedUpfrontCommitment   :: !(Maybe Text)
    , _spacTotalAmortizedCommitment     :: !(Maybe Text)
    , _spacAmortizedRecurringCommitment :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansAmortizedCommitment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spacAmortizedUpfrontCommitment' - The amortized amount of your Savings Plans commitment that was purchased with an @Upfront@ or @PartialUpfront@ Savings Plans.
--
-- * 'spacTotalAmortizedCommitment' - The total amortized amount of your Savings Plans commitment, regardless of your Savings Plans purchase method.
--
-- * 'spacAmortizedRecurringCommitment' - The amortized amount of your Savings Plans commitment that was purchased with either a @Partial@ or a @NoUpfront@ .
savingsPlansAmortizedCommitment
    :: SavingsPlansAmortizedCommitment
savingsPlansAmortizedCommitment =
  SavingsPlansAmortizedCommitment'
    { _spacAmortizedUpfrontCommitment = Nothing
    , _spacTotalAmortizedCommitment = Nothing
    , _spacAmortizedRecurringCommitment = Nothing
    }


-- | The amortized amount of your Savings Plans commitment that was purchased with an @Upfront@ or @PartialUpfront@ Savings Plans.
spacAmortizedUpfrontCommitment :: Lens' SavingsPlansAmortizedCommitment (Maybe Text)
spacAmortizedUpfrontCommitment = lens _spacAmortizedUpfrontCommitment (\ s a -> s{_spacAmortizedUpfrontCommitment = a})

-- | The total amortized amount of your Savings Plans commitment, regardless of your Savings Plans purchase method.
spacTotalAmortizedCommitment :: Lens' SavingsPlansAmortizedCommitment (Maybe Text)
spacTotalAmortizedCommitment = lens _spacTotalAmortizedCommitment (\ s a -> s{_spacTotalAmortizedCommitment = a})

-- | The amortized amount of your Savings Plans commitment that was purchased with either a @Partial@ or a @NoUpfront@ .
spacAmortizedRecurringCommitment :: Lens' SavingsPlansAmortizedCommitment (Maybe Text)
spacAmortizedRecurringCommitment = lens _spacAmortizedRecurringCommitment (\ s a -> s{_spacAmortizedRecurringCommitment = a})

instance FromJSON SavingsPlansAmortizedCommitment
         where
        parseJSON
          = withObject "SavingsPlansAmortizedCommitment"
              (\ x ->
                 SavingsPlansAmortizedCommitment' <$>
                   (x .:? "AmortizedUpfrontCommitment") <*>
                     (x .:? "TotalAmortizedCommitment")
                     <*> (x .:? "AmortizedRecurringCommitment"))

instance Hashable SavingsPlansAmortizedCommitment
         where

instance NFData SavingsPlansAmortizedCommitment where

-- | The amount of Savings Plans eligible usage that is covered by Savings Plans. All calculations consider the On-Demand equivalent of your Savings Plans usage.
--
--
--
-- /See:/ 'savingsPlansCoverage' smart constructor.
data SavingsPlansCoverage =
  SavingsPlansCoverage'
    { _spcTimePeriod :: !(Maybe DateInterval)
    , _spcCoverage   :: !(Maybe SavingsPlansCoverageData)
    , _spcAttributes :: !(Maybe (Map Text Text))
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansCoverage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spcTimePeriod' - Undocumented member.
--
-- * 'spcCoverage' - The amount of Savings Plans eligible usage that the Savings Plans covered.
--
-- * 'spcAttributes' - The attribute that applies to a specific @Dimension@ .
savingsPlansCoverage
    :: SavingsPlansCoverage
savingsPlansCoverage =
  SavingsPlansCoverage'
    {_spcTimePeriod = Nothing, _spcCoverage = Nothing, _spcAttributes = Nothing}


-- | Undocumented member.
spcTimePeriod :: Lens' SavingsPlansCoverage (Maybe DateInterval)
spcTimePeriod = lens _spcTimePeriod (\ s a -> s{_spcTimePeriod = a})

-- | The amount of Savings Plans eligible usage that the Savings Plans covered.
spcCoverage :: Lens' SavingsPlansCoverage (Maybe SavingsPlansCoverageData)
spcCoverage = lens _spcCoverage (\ s a -> s{_spcCoverage = a})

-- | The attribute that applies to a specific @Dimension@ .
spcAttributes :: Lens' SavingsPlansCoverage (HashMap Text Text)
spcAttributes = lens _spcAttributes (\ s a -> s{_spcAttributes = a}) . _Default . _Map

instance FromJSON SavingsPlansCoverage where
        parseJSON
          = withObject "SavingsPlansCoverage"
              (\ x ->
                 SavingsPlansCoverage' <$>
                   (x .:? "TimePeriod") <*> (x .:? "Coverage") <*>
                     (x .:? "Attributes" .!= mempty))

instance Hashable SavingsPlansCoverage where

instance NFData SavingsPlansCoverage where

-- | Specific coverage percentage, On-Demand costs, and spend covered by Savings Plans, and total Savings Plans costs for an account.
--
--
--
-- /See:/ 'savingsPlansCoverageData' smart constructor.
data SavingsPlansCoverageData =
  SavingsPlansCoverageData'
    { _spcdOnDemandCost               :: !(Maybe Text)
    , _spcdSpendCoveredBySavingsPlans :: !(Maybe Text)
    , _spcdCoveragePercentage         :: !(Maybe Text)
    , _spcdTotalCost                  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansCoverageData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spcdOnDemandCost' - The cost of your Amazon Web Services usage at the public On-Demand rate.
--
-- * 'spcdSpendCoveredBySavingsPlans' - The amount of your Amazon Web Services usage that is covered by a Savings Plans.
--
-- * 'spcdCoveragePercentage' - The percentage of your existing Savings Plans covered usage, divided by all of your eligible Savings Plans usage in an account(or set of accounts).
--
-- * 'spcdTotalCost' - The total cost of your Amazon Web Services usage, regardless of your purchase option.
savingsPlansCoverageData
    :: SavingsPlansCoverageData
savingsPlansCoverageData =
  SavingsPlansCoverageData'
    { _spcdOnDemandCost = Nothing
    , _spcdSpendCoveredBySavingsPlans = Nothing
    , _spcdCoveragePercentage = Nothing
    , _spcdTotalCost = Nothing
    }


-- | The cost of your Amazon Web Services usage at the public On-Demand rate.
spcdOnDemandCost :: Lens' SavingsPlansCoverageData (Maybe Text)
spcdOnDemandCost = lens _spcdOnDemandCost (\ s a -> s{_spcdOnDemandCost = a})

-- | The amount of your Amazon Web Services usage that is covered by a Savings Plans.
spcdSpendCoveredBySavingsPlans :: Lens' SavingsPlansCoverageData (Maybe Text)
spcdSpendCoveredBySavingsPlans = lens _spcdSpendCoveredBySavingsPlans (\ s a -> s{_spcdSpendCoveredBySavingsPlans = a})

-- | The percentage of your existing Savings Plans covered usage, divided by all of your eligible Savings Plans usage in an account(or set of accounts).
spcdCoveragePercentage :: Lens' SavingsPlansCoverageData (Maybe Text)
spcdCoveragePercentage = lens _spcdCoveragePercentage (\ s a -> s{_spcdCoveragePercentage = a})

-- | The total cost of your Amazon Web Services usage, regardless of your purchase option.
spcdTotalCost :: Lens' SavingsPlansCoverageData (Maybe Text)
spcdTotalCost = lens _spcdTotalCost (\ s a -> s{_spcdTotalCost = a})

instance FromJSON SavingsPlansCoverageData where
        parseJSON
          = withObject "SavingsPlansCoverageData"
              (\ x ->
                 SavingsPlansCoverageData' <$>
                   (x .:? "OnDemandCost") <*>
                     (x .:? "SpendCoveredBySavingsPlans")
                     <*> (x .:? "CoveragePercentage")
                     <*> (x .:? "TotalCost"))

instance Hashable SavingsPlansCoverageData where

instance NFData SavingsPlansCoverageData where

-- | Attribute details on a specific Savings Plan.
--
--
--
-- /See:/ 'savingsPlansDetails' smart constructor.
data SavingsPlansDetails =
  SavingsPlansDetails'
    { _spdInstanceFamily :: !(Maybe Text)
    , _spdOfferingId     :: !(Maybe Text)
    , _spdRegion         :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spdInstanceFamily' - A group of instance types that Savings Plans applies to.
--
-- * 'spdOfferingId' - The unique ID used to distinguish Savings Plans from one another.
--
-- * 'spdRegion' - A collection of AWS resources in a geographic area. Each AWS Region is isolated and independent of the other Regions.
savingsPlansDetails
    :: SavingsPlansDetails
savingsPlansDetails =
  SavingsPlansDetails'
    { _spdInstanceFamily = Nothing
    , _spdOfferingId = Nothing
    , _spdRegion = Nothing
    }


-- | A group of instance types that Savings Plans applies to.
spdInstanceFamily :: Lens' SavingsPlansDetails (Maybe Text)
spdInstanceFamily = lens _spdInstanceFamily (\ s a -> s{_spdInstanceFamily = a})

-- | The unique ID used to distinguish Savings Plans from one another.
spdOfferingId :: Lens' SavingsPlansDetails (Maybe Text)
spdOfferingId = lens _spdOfferingId (\ s a -> s{_spdOfferingId = a})

-- | A collection of AWS resources in a geographic area. Each AWS Region is isolated and independent of the other Regions.
spdRegion :: Lens' SavingsPlansDetails (Maybe Text)
spdRegion = lens _spdRegion (\ s a -> s{_spdRegion = a})

instance FromJSON SavingsPlansDetails where
        parseJSON
          = withObject "SavingsPlansDetails"
              (\ x ->
                 SavingsPlansDetails' <$>
                   (x .:? "InstanceFamily") <*> (x .:? "OfferingId") <*>
                     (x .:? "Region"))

instance Hashable SavingsPlansDetails where

instance NFData SavingsPlansDetails where

-- | Contains your request parameters, Savings Plan Recommendations Summary, and Details.
--
--
--
-- /See:/ 'savingsPlansPurchaseRecommendation' smart constructor.
data SavingsPlansPurchaseRecommendation =
  SavingsPlansPurchaseRecommendation'
    { _spprSavingsPlansPurchaseRecommendationDetails :: !(Maybe [SavingsPlansPurchaseRecommendationDetail])
    , _spprTermInYears :: !(Maybe TermInYears)
    , _spprAccountScope :: !(Maybe AccountScope)
    , _spprSavingsPlansType :: !(Maybe SupportedSavingsPlansType)
    , _spprLookbackPeriodInDays :: !(Maybe LookbackPeriodInDays)
    , _spprPaymentOption :: !(Maybe PaymentOption)
    , _spprSavingsPlansPurchaseRecommendationSummary :: !(Maybe SavingsPlansPurchaseRecommendationSummary)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansPurchaseRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spprSavingsPlansPurchaseRecommendationDetails' - Details for the Savings Plans we recommend that you purchase to cover existing Savings Plans eligible workloads.
--
-- * 'spprTermInYears' - The Savings Plans recommendation term in years, used to generate the recommendation.
--
-- * 'spprAccountScope' - The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the payer account and linked accounts if the value is set to @PAYER@ . If the value is @LINKED@ , recommendations are calculated for individual linked accounts only.
--
-- * 'spprSavingsPlansType' - The requested Savings Plans recommendation type.
--
-- * 'spprLookbackPeriodInDays' - The lookback period in days, used to generate the recommendation.
--
-- * 'spprPaymentOption' - The payment option used to generate the recommendation.
--
-- * 'spprSavingsPlansPurchaseRecommendationSummary' - Summary metrics for your Savings Plans Recommendations.
savingsPlansPurchaseRecommendation
    :: SavingsPlansPurchaseRecommendation
savingsPlansPurchaseRecommendation =
  SavingsPlansPurchaseRecommendation'
    { _spprSavingsPlansPurchaseRecommendationDetails = Nothing
    , _spprTermInYears = Nothing
    , _spprAccountScope = Nothing
    , _spprSavingsPlansType = Nothing
    , _spprLookbackPeriodInDays = Nothing
    , _spprPaymentOption = Nothing
    , _spprSavingsPlansPurchaseRecommendationSummary = Nothing
    }


-- | Details for the Savings Plans we recommend that you purchase to cover existing Savings Plans eligible workloads.
spprSavingsPlansPurchaseRecommendationDetails :: Lens' SavingsPlansPurchaseRecommendation [SavingsPlansPurchaseRecommendationDetail]
spprSavingsPlansPurchaseRecommendationDetails = lens _spprSavingsPlansPurchaseRecommendationDetails (\ s a -> s{_spprSavingsPlansPurchaseRecommendationDetails = a}) . _Default . _Coerce

-- | The Savings Plans recommendation term in years, used to generate the recommendation.
spprTermInYears :: Lens' SavingsPlansPurchaseRecommendation (Maybe TermInYears)
spprTermInYears = lens _spprTermInYears (\ s a -> s{_spprTermInYears = a})

-- | The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the payer account and linked accounts if the value is set to @PAYER@ . If the value is @LINKED@ , recommendations are calculated for individual linked accounts only.
spprAccountScope :: Lens' SavingsPlansPurchaseRecommendation (Maybe AccountScope)
spprAccountScope = lens _spprAccountScope (\ s a -> s{_spprAccountScope = a})

-- | The requested Savings Plans recommendation type.
spprSavingsPlansType :: Lens' SavingsPlansPurchaseRecommendation (Maybe SupportedSavingsPlansType)
spprSavingsPlansType = lens _spprSavingsPlansType (\ s a -> s{_spprSavingsPlansType = a})

-- | The lookback period in days, used to generate the recommendation.
spprLookbackPeriodInDays :: Lens' SavingsPlansPurchaseRecommendation (Maybe LookbackPeriodInDays)
spprLookbackPeriodInDays = lens _spprLookbackPeriodInDays (\ s a -> s{_spprLookbackPeriodInDays = a})

-- | The payment option used to generate the recommendation.
spprPaymentOption :: Lens' SavingsPlansPurchaseRecommendation (Maybe PaymentOption)
spprPaymentOption = lens _spprPaymentOption (\ s a -> s{_spprPaymentOption = a})

-- | Summary metrics for your Savings Plans Recommendations.
spprSavingsPlansPurchaseRecommendationSummary :: Lens' SavingsPlansPurchaseRecommendation (Maybe SavingsPlansPurchaseRecommendationSummary)
spprSavingsPlansPurchaseRecommendationSummary = lens _spprSavingsPlansPurchaseRecommendationSummary (\ s a -> s{_spprSavingsPlansPurchaseRecommendationSummary = a})

instance FromJSON SavingsPlansPurchaseRecommendation
         where
        parseJSON
          = withObject "SavingsPlansPurchaseRecommendation"
              (\ x ->
                 SavingsPlansPurchaseRecommendation' <$>
                   (x .:? "SavingsPlansPurchaseRecommendationDetails"
                      .!= mempty)
                     <*> (x .:? "TermInYears")
                     <*> (x .:? "AccountScope")
                     <*> (x .:? "SavingsPlansType")
                     <*> (x .:? "LookbackPeriodInDays")
                     <*> (x .:? "PaymentOption")
                     <*>
                     (x .:? "SavingsPlansPurchaseRecommendationSummary"))

instance Hashable SavingsPlansPurchaseRecommendation
         where

instance NFData SavingsPlansPurchaseRecommendation
         where

-- | Details for your recommended Savings Plans.
--
--
--
-- /See:/ 'savingsPlansPurchaseRecommendationDetail' smart constructor.
data SavingsPlansPurchaseRecommendationDetail =
  SavingsPlansPurchaseRecommendationDetail'
    { _spprdCurrencyCode :: !(Maybe Text)
    , _spprdCurrentAverageHourlyOnDemandSpend :: !(Maybe Text)
    , _spprdSavingsPlansDetails :: !(Maybe SavingsPlansDetails)
    , _spprdCurrentMinimumHourlyOnDemandSpend :: !(Maybe Text)
    , _spprdEstimatedROI :: !(Maybe Text)
    , _spprdCurrentMaximumHourlyOnDemandSpend :: !(Maybe Text)
    , _spprdEstimatedSavingsAmount :: !(Maybe Text)
    , _spprdAccountId :: !(Maybe Text)
    , _spprdEstimatedMonthlySavingsAmount :: !(Maybe Text)
    , _spprdEstimatedOnDemandCost :: !(Maybe Text)
    , _spprdEstimatedOnDemandCostWithCurrentCommitment :: !(Maybe Text)
    , _spprdUpfrontCost :: !(Maybe Text)
    , _spprdEstimatedSPCost :: !(Maybe Text)
    , _spprdEstimatedSavingsPercentage :: !(Maybe Text)
    , _spprdEstimatedAverageUtilization :: !(Maybe Text)
    , _spprdHourlyCommitmentToPurchase :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansPurchaseRecommendationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spprdCurrencyCode' - The currency code Amazon Web Services used to generate the recommendations and present potential savings.
--
-- * 'spprdCurrentAverageHourlyOnDemandSpend' - The average value of hourly On-Demand spend over the lookback period of the applicable usage type.
--
-- * 'spprdSavingsPlansDetails' - Details for your recommended Savings Plans.
--
-- * 'spprdCurrentMinimumHourlyOnDemandSpend' - The lowest value of hourly On-Demand spend over the lookback period of the applicable usage type.
--
-- * 'spprdEstimatedROI' - The estimated return on investment based on the recommended Savings Plans purchased. This is calculated as @estimatedSavingsAmount@ / @estimatedSPCost@ *100.
--
-- * 'spprdCurrentMaximumHourlyOnDemandSpend' - The highest value of hourly On-Demand spend over the lookback period of the applicable usage type.
--
-- * 'spprdEstimatedSavingsAmount' - The estimated savings amount based on the recommended Savings Plans over the length of the lookback period.
--
-- * 'spprdAccountId' - The @AccountID@ the recommendation is generated for.
--
-- * 'spprdEstimatedMonthlySavingsAmount' - The estimated monthly savings amount, based on the recommended Savings Plans.
--
-- * 'spprdEstimatedOnDemandCost' - The remaining On-Demand cost estimated to not be covered by the recommended Savings Plans, over the length of the lookback period.
--
-- * 'spprdEstimatedOnDemandCostWithCurrentCommitment' - The estimated On-Demand costs you would expect with no additional commitment, based on your usage of the selected time period and the Savings Plans you own.
--
-- * 'spprdUpfrontCost' - The upfront cost of the recommended Savings Plans, based on the selected payment option.
--
-- * 'spprdEstimatedSPCost' - The cost of the recommended Savings Plans over the length of the lookback period.
--
-- * 'spprdEstimatedSavingsPercentage' - The estimated savings percentage relative to the total cost of applicable On-Demand usage over the lookback period.
--
-- * 'spprdEstimatedAverageUtilization' - The estimated utilization of the recommended Savings Plans.
--
-- * 'spprdHourlyCommitmentToPurchase' - The recommended hourly commitment level for the Savings Plans type, and configuration based on the usage during the lookback period.
savingsPlansPurchaseRecommendationDetail
    :: SavingsPlansPurchaseRecommendationDetail
savingsPlansPurchaseRecommendationDetail =
  SavingsPlansPurchaseRecommendationDetail'
    { _spprdCurrencyCode = Nothing
    , _spprdCurrentAverageHourlyOnDemandSpend = Nothing
    , _spprdSavingsPlansDetails = Nothing
    , _spprdCurrentMinimumHourlyOnDemandSpend = Nothing
    , _spprdEstimatedROI = Nothing
    , _spprdCurrentMaximumHourlyOnDemandSpend = Nothing
    , _spprdEstimatedSavingsAmount = Nothing
    , _spprdAccountId = Nothing
    , _spprdEstimatedMonthlySavingsAmount = Nothing
    , _spprdEstimatedOnDemandCost = Nothing
    , _spprdEstimatedOnDemandCostWithCurrentCommitment = Nothing
    , _spprdUpfrontCost = Nothing
    , _spprdEstimatedSPCost = Nothing
    , _spprdEstimatedSavingsPercentage = Nothing
    , _spprdEstimatedAverageUtilization = Nothing
    , _spprdHourlyCommitmentToPurchase = Nothing
    }


-- | The currency code Amazon Web Services used to generate the recommendations and present potential savings.
spprdCurrencyCode :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdCurrencyCode = lens _spprdCurrencyCode (\ s a -> s{_spprdCurrencyCode = a})

-- | The average value of hourly On-Demand spend over the lookback period of the applicable usage type.
spprdCurrentAverageHourlyOnDemandSpend :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdCurrentAverageHourlyOnDemandSpend = lens _spprdCurrentAverageHourlyOnDemandSpend (\ s a -> s{_spprdCurrentAverageHourlyOnDemandSpend = a})

-- | Details for your recommended Savings Plans.
spprdSavingsPlansDetails :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe SavingsPlansDetails)
spprdSavingsPlansDetails = lens _spprdSavingsPlansDetails (\ s a -> s{_spprdSavingsPlansDetails = a})

-- | The lowest value of hourly On-Demand spend over the lookback period of the applicable usage type.
spprdCurrentMinimumHourlyOnDemandSpend :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdCurrentMinimumHourlyOnDemandSpend = lens _spprdCurrentMinimumHourlyOnDemandSpend (\ s a -> s{_spprdCurrentMinimumHourlyOnDemandSpend = a})

-- | The estimated return on investment based on the recommended Savings Plans purchased. This is calculated as @estimatedSavingsAmount@ / @estimatedSPCost@ *100.
spprdEstimatedROI :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdEstimatedROI = lens _spprdEstimatedROI (\ s a -> s{_spprdEstimatedROI = a})

-- | The highest value of hourly On-Demand spend over the lookback period of the applicable usage type.
spprdCurrentMaximumHourlyOnDemandSpend :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdCurrentMaximumHourlyOnDemandSpend = lens _spprdCurrentMaximumHourlyOnDemandSpend (\ s a -> s{_spprdCurrentMaximumHourlyOnDemandSpend = a})

-- | The estimated savings amount based on the recommended Savings Plans over the length of the lookback period.
spprdEstimatedSavingsAmount :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdEstimatedSavingsAmount = lens _spprdEstimatedSavingsAmount (\ s a -> s{_spprdEstimatedSavingsAmount = a})

-- | The @AccountID@ the recommendation is generated for.
spprdAccountId :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdAccountId = lens _spprdAccountId (\ s a -> s{_spprdAccountId = a})

-- | The estimated monthly savings amount, based on the recommended Savings Plans.
spprdEstimatedMonthlySavingsAmount :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdEstimatedMonthlySavingsAmount = lens _spprdEstimatedMonthlySavingsAmount (\ s a -> s{_spprdEstimatedMonthlySavingsAmount = a})

-- | The remaining On-Demand cost estimated to not be covered by the recommended Savings Plans, over the length of the lookback period.
spprdEstimatedOnDemandCost :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdEstimatedOnDemandCost = lens _spprdEstimatedOnDemandCost (\ s a -> s{_spprdEstimatedOnDemandCost = a})

-- | The estimated On-Demand costs you would expect with no additional commitment, based on your usage of the selected time period and the Savings Plans you own.
spprdEstimatedOnDemandCostWithCurrentCommitment :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdEstimatedOnDemandCostWithCurrentCommitment = lens _spprdEstimatedOnDemandCostWithCurrentCommitment (\ s a -> s{_spprdEstimatedOnDemandCostWithCurrentCommitment = a})

-- | The upfront cost of the recommended Savings Plans, based on the selected payment option.
spprdUpfrontCost :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdUpfrontCost = lens _spprdUpfrontCost (\ s a -> s{_spprdUpfrontCost = a})

-- | The cost of the recommended Savings Plans over the length of the lookback period.
spprdEstimatedSPCost :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdEstimatedSPCost = lens _spprdEstimatedSPCost (\ s a -> s{_spprdEstimatedSPCost = a})

-- | The estimated savings percentage relative to the total cost of applicable On-Demand usage over the lookback period.
spprdEstimatedSavingsPercentage :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdEstimatedSavingsPercentage = lens _spprdEstimatedSavingsPercentage (\ s a -> s{_spprdEstimatedSavingsPercentage = a})

-- | The estimated utilization of the recommended Savings Plans.
spprdEstimatedAverageUtilization :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdEstimatedAverageUtilization = lens _spprdEstimatedAverageUtilization (\ s a -> s{_spprdEstimatedAverageUtilization = a})

-- | The recommended hourly commitment level for the Savings Plans type, and configuration based on the usage during the lookback period.
spprdHourlyCommitmentToPurchase :: Lens' SavingsPlansPurchaseRecommendationDetail (Maybe Text)
spprdHourlyCommitmentToPurchase = lens _spprdHourlyCommitmentToPurchase (\ s a -> s{_spprdHourlyCommitmentToPurchase = a})

instance FromJSON
           SavingsPlansPurchaseRecommendationDetail
         where
        parseJSON
          = withObject
              "SavingsPlansPurchaseRecommendationDetail"
              (\ x ->
                 SavingsPlansPurchaseRecommendationDetail' <$>
                   (x .:? "CurrencyCode") <*>
                     (x .:? "CurrentAverageHourlyOnDemandSpend")
                     <*> (x .:? "SavingsPlansDetails")
                     <*> (x .:? "CurrentMinimumHourlyOnDemandSpend")
                     <*> (x .:? "EstimatedROI")
                     <*> (x .:? "CurrentMaximumHourlyOnDemandSpend")
                     <*> (x .:? "EstimatedSavingsAmount")
                     <*> (x .:? "AccountId")
                     <*> (x .:? "EstimatedMonthlySavingsAmount")
                     <*> (x .:? "EstimatedOnDemandCost")
                     <*>
                     (x .:? "EstimatedOnDemandCostWithCurrentCommitment")
                     <*> (x .:? "UpfrontCost")
                     <*> (x .:? "EstimatedSPCost")
                     <*> (x .:? "EstimatedSavingsPercentage")
                     <*> (x .:? "EstimatedAverageUtilization")
                     <*> (x .:? "HourlyCommitmentToPurchase"))

instance Hashable
           SavingsPlansPurchaseRecommendationDetail
         where

instance NFData
           SavingsPlansPurchaseRecommendationDetail
         where

-- | Metadata about your Savings Plans Purchase Recommendations.
--
--
--
-- /See:/ 'savingsPlansPurchaseRecommendationMetadata' smart constructor.
data SavingsPlansPurchaseRecommendationMetadata =
  SavingsPlansPurchaseRecommendationMetadata'
    { _spprmRecommendationId    :: !(Maybe Text)
    , _spprmGenerationTimestamp :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansPurchaseRecommendationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spprmRecommendationId' - The unique identifier for the recommendation set.
--
-- * 'spprmGenerationTimestamp' - The timestamp showing when the recommendations were generated.
savingsPlansPurchaseRecommendationMetadata
    :: SavingsPlansPurchaseRecommendationMetadata
savingsPlansPurchaseRecommendationMetadata =
  SavingsPlansPurchaseRecommendationMetadata'
    {_spprmRecommendationId = Nothing, _spprmGenerationTimestamp = Nothing}


-- | The unique identifier for the recommendation set.
spprmRecommendationId :: Lens' SavingsPlansPurchaseRecommendationMetadata (Maybe Text)
spprmRecommendationId = lens _spprmRecommendationId (\ s a -> s{_spprmRecommendationId = a})

-- | The timestamp showing when the recommendations were generated.
spprmGenerationTimestamp :: Lens' SavingsPlansPurchaseRecommendationMetadata (Maybe Text)
spprmGenerationTimestamp = lens _spprmGenerationTimestamp (\ s a -> s{_spprmGenerationTimestamp = a})

instance FromJSON
           SavingsPlansPurchaseRecommendationMetadata
         where
        parseJSON
          = withObject
              "SavingsPlansPurchaseRecommendationMetadata"
              (\ x ->
                 SavingsPlansPurchaseRecommendationMetadata' <$>
                   (x .:? "RecommendationId") <*>
                     (x .:? "GenerationTimestamp"))

instance Hashable
           SavingsPlansPurchaseRecommendationMetadata
         where

instance NFData
           SavingsPlansPurchaseRecommendationMetadata
         where

-- | Summary metrics for your Savings Plans Purchase Recommendations.
--
--
--
-- /See:/ 'savingsPlansPurchaseRecommendationSummary' smart constructor.
data SavingsPlansPurchaseRecommendationSummary =
  SavingsPlansPurchaseRecommendationSummary'
    { _spprsCurrencyCode                               :: !(Maybe Text)
    , _spprsDailyCommitmentToPurchase                  :: !(Maybe Text)
    , _spprsEstimatedTotalCost                         :: !(Maybe Text)
    , _spprsEstimatedROI                               :: !(Maybe Text)
    , _spprsEstimatedSavingsAmount                     :: !(Maybe Text)
    , _spprsEstimatedMonthlySavingsAmount              :: !(Maybe Text)
    , _spprsEstimatedOnDemandCostWithCurrentCommitment :: !(Maybe Text)
    , _spprsEstimatedSavingsPercentage                 :: !(Maybe Text)
    , _spprsTotalRecommendationCount                   :: !(Maybe Text)
    , _spprsCurrentOnDemandSpend                       :: !(Maybe Text)
    , _spprsHourlyCommitmentToPurchase                 :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansPurchaseRecommendationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spprsCurrencyCode' - The currency code Amazon Web Services used to generate the recommendations and present potential savings.
--
-- * 'spprsDailyCommitmentToPurchase' - The recommended Savings Plans cost on a daily (24 hourly) basis.
--
-- * 'spprsEstimatedTotalCost' - The estimated total cost of the usage after purchasing the recommended Savings Plans. This is a sum of the cost of Savings Plans during this term, and the remaining On-Demand usage.
--
-- * 'spprsEstimatedROI' - The estimated return on investment based on the recommended Savings Plans and estimated savings.
--
-- * 'spprsEstimatedSavingsAmount' - The estimated total savings over the lookback period, based on the purchase of the recommended Savings Plans.
--
-- * 'spprsEstimatedMonthlySavingsAmount' - The estimated monthly savings amount, based on the recommended Savings Plans purchase.
--
-- * 'spprsEstimatedOnDemandCostWithCurrentCommitment' - The estimated On-Demand costs you would expect with no additional commitment, based on your usage of the selected time period and the Savings Plans you own.
--
-- * 'spprsEstimatedSavingsPercentage' - The estimated savings relative to the total cost of On-Demand usage, over the lookback period. This is calculated as @estimatedSavingsAmount@ / @CurrentOnDemandSpend@ *100.
--
-- * 'spprsTotalRecommendationCount' - The aggregate number of Savings Plans recommendations that exist for your account.
--
-- * 'spprsCurrentOnDemandSpend' - The current total on demand spend of the applicable usage types over the lookback period.
--
-- * 'spprsHourlyCommitmentToPurchase' - The recommended hourly commitment based on the recommendation parameters.
savingsPlansPurchaseRecommendationSummary
    :: SavingsPlansPurchaseRecommendationSummary
savingsPlansPurchaseRecommendationSummary =
  SavingsPlansPurchaseRecommendationSummary'
    { _spprsCurrencyCode = Nothing
    , _spprsDailyCommitmentToPurchase = Nothing
    , _spprsEstimatedTotalCost = Nothing
    , _spprsEstimatedROI = Nothing
    , _spprsEstimatedSavingsAmount = Nothing
    , _spprsEstimatedMonthlySavingsAmount = Nothing
    , _spprsEstimatedOnDemandCostWithCurrentCommitment = Nothing
    , _spprsEstimatedSavingsPercentage = Nothing
    , _spprsTotalRecommendationCount = Nothing
    , _spprsCurrentOnDemandSpend = Nothing
    , _spprsHourlyCommitmentToPurchase = Nothing
    }


-- | The currency code Amazon Web Services used to generate the recommendations and present potential savings.
spprsCurrencyCode :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsCurrencyCode = lens _spprsCurrencyCode (\ s a -> s{_spprsCurrencyCode = a})

-- | The recommended Savings Plans cost on a daily (24 hourly) basis.
spprsDailyCommitmentToPurchase :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsDailyCommitmentToPurchase = lens _spprsDailyCommitmentToPurchase (\ s a -> s{_spprsDailyCommitmentToPurchase = a})

-- | The estimated total cost of the usage after purchasing the recommended Savings Plans. This is a sum of the cost of Savings Plans during this term, and the remaining On-Demand usage.
spprsEstimatedTotalCost :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsEstimatedTotalCost = lens _spprsEstimatedTotalCost (\ s a -> s{_spprsEstimatedTotalCost = a})

-- | The estimated return on investment based on the recommended Savings Plans and estimated savings.
spprsEstimatedROI :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsEstimatedROI = lens _spprsEstimatedROI (\ s a -> s{_spprsEstimatedROI = a})

-- | The estimated total savings over the lookback period, based on the purchase of the recommended Savings Plans.
spprsEstimatedSavingsAmount :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsEstimatedSavingsAmount = lens _spprsEstimatedSavingsAmount (\ s a -> s{_spprsEstimatedSavingsAmount = a})

-- | The estimated monthly savings amount, based on the recommended Savings Plans purchase.
spprsEstimatedMonthlySavingsAmount :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsEstimatedMonthlySavingsAmount = lens _spprsEstimatedMonthlySavingsAmount (\ s a -> s{_spprsEstimatedMonthlySavingsAmount = a})

-- | The estimated On-Demand costs you would expect with no additional commitment, based on your usage of the selected time period and the Savings Plans you own.
spprsEstimatedOnDemandCostWithCurrentCommitment :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsEstimatedOnDemandCostWithCurrentCommitment = lens _spprsEstimatedOnDemandCostWithCurrentCommitment (\ s a -> s{_spprsEstimatedOnDemandCostWithCurrentCommitment = a})

-- | The estimated savings relative to the total cost of On-Demand usage, over the lookback period. This is calculated as @estimatedSavingsAmount@ / @CurrentOnDemandSpend@ *100.
spprsEstimatedSavingsPercentage :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsEstimatedSavingsPercentage = lens _spprsEstimatedSavingsPercentage (\ s a -> s{_spprsEstimatedSavingsPercentage = a})

-- | The aggregate number of Savings Plans recommendations that exist for your account.
spprsTotalRecommendationCount :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsTotalRecommendationCount = lens _spprsTotalRecommendationCount (\ s a -> s{_spprsTotalRecommendationCount = a})

-- | The current total on demand spend of the applicable usage types over the lookback period.
spprsCurrentOnDemandSpend :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsCurrentOnDemandSpend = lens _spprsCurrentOnDemandSpend (\ s a -> s{_spprsCurrentOnDemandSpend = a})

-- | The recommended hourly commitment based on the recommendation parameters.
spprsHourlyCommitmentToPurchase :: Lens' SavingsPlansPurchaseRecommendationSummary (Maybe Text)
spprsHourlyCommitmentToPurchase = lens _spprsHourlyCommitmentToPurchase (\ s a -> s{_spprsHourlyCommitmentToPurchase = a})

instance FromJSON
           SavingsPlansPurchaseRecommendationSummary
         where
        parseJSON
          = withObject
              "SavingsPlansPurchaseRecommendationSummary"
              (\ x ->
                 SavingsPlansPurchaseRecommendationSummary' <$>
                   (x .:? "CurrencyCode") <*>
                     (x .:? "DailyCommitmentToPurchase")
                     <*> (x .:? "EstimatedTotalCost")
                     <*> (x .:? "EstimatedROI")
                     <*> (x .:? "EstimatedSavingsAmount")
                     <*> (x .:? "EstimatedMonthlySavingsAmount")
                     <*>
                     (x .:? "EstimatedOnDemandCostWithCurrentCommitment")
                     <*> (x .:? "EstimatedSavingsPercentage")
                     <*> (x .:? "TotalRecommendationCount")
                     <*> (x .:? "CurrentOnDemandSpend")
                     <*> (x .:? "HourlyCommitmentToPurchase"))

instance Hashable
           SavingsPlansPurchaseRecommendationSummary
         where

instance NFData
           SavingsPlansPurchaseRecommendationSummary
         where

-- | The amount of savings you're accumulating, against the public On-Demand rate of the usage accrued in an account.
--
--
--
-- /See:/ 'savingsPlansSavings' smart constructor.
data SavingsPlansSavings =
  SavingsPlansSavings'
    { _spsNetSavings             :: !(Maybe Text)
    , _spsOnDemandCostEquivalent :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansSavings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spsNetSavings' - The savings amount that you are accumulating for the usage that is covered by a Savings Plans, when compared to the On-Demand equivalent of the same usage.
--
-- * 'spsOnDemandCostEquivalent' - How much the amount that the usage would have cost if it was accrued at the On-Demand rate.
savingsPlansSavings
    :: SavingsPlansSavings
savingsPlansSavings =
  SavingsPlansSavings'
    {_spsNetSavings = Nothing, _spsOnDemandCostEquivalent = Nothing}


-- | The savings amount that you are accumulating for the usage that is covered by a Savings Plans, when compared to the On-Demand equivalent of the same usage.
spsNetSavings :: Lens' SavingsPlansSavings (Maybe Text)
spsNetSavings = lens _spsNetSavings (\ s a -> s{_spsNetSavings = a})

-- | How much the amount that the usage would have cost if it was accrued at the On-Demand rate.
spsOnDemandCostEquivalent :: Lens' SavingsPlansSavings (Maybe Text)
spsOnDemandCostEquivalent = lens _spsOnDemandCostEquivalent (\ s a -> s{_spsOnDemandCostEquivalent = a})

instance FromJSON SavingsPlansSavings where
        parseJSON
          = withObject "SavingsPlansSavings"
              (\ x ->
                 SavingsPlansSavings' <$>
                   (x .:? "NetSavings") <*>
                     (x .:? "OnDemandCostEquivalent"))

instance Hashable SavingsPlansSavings where

instance NFData SavingsPlansSavings where

-- | The measurement of how well you are using your existing Savings Plans.
--
--
--
-- /See:/ 'savingsPlansUtilization' smart constructor.
data SavingsPlansUtilization =
  SavingsPlansUtilization'
    { _spuUnusedCommitment      :: !(Maybe Text)
    , _spuUtilizationPercentage :: !(Maybe Text)
    , _spuTotalCommitment       :: !(Maybe Text)
    , _spuUsedCommitment        :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spuUnusedCommitment' - The amount of your Savings Plans commitment that was not consumed from Savings Plans eligible usage in a specific period.
--
-- * 'spuUtilizationPercentage' - The amount of @UsedCommitment@ divided by the @TotalCommitment@ for your Savings Plans.
--
-- * 'spuTotalCommitment' - The total amount of Savings Plans commitment that's been purchased in an account (or set of accounts).
--
-- * 'spuUsedCommitment' - The amount of your Savings Plans commitment that was consumed from Savings Plans eligible usage in a specific period.
savingsPlansUtilization
    :: SavingsPlansUtilization
savingsPlansUtilization =
  SavingsPlansUtilization'
    { _spuUnusedCommitment = Nothing
    , _spuUtilizationPercentage = Nothing
    , _spuTotalCommitment = Nothing
    , _spuUsedCommitment = Nothing
    }


-- | The amount of your Savings Plans commitment that was not consumed from Savings Plans eligible usage in a specific period.
spuUnusedCommitment :: Lens' SavingsPlansUtilization (Maybe Text)
spuUnusedCommitment = lens _spuUnusedCommitment (\ s a -> s{_spuUnusedCommitment = a})

-- | The amount of @UsedCommitment@ divided by the @TotalCommitment@ for your Savings Plans.
spuUtilizationPercentage :: Lens' SavingsPlansUtilization (Maybe Text)
spuUtilizationPercentage = lens _spuUtilizationPercentage (\ s a -> s{_spuUtilizationPercentage = a})

-- | The total amount of Savings Plans commitment that's been purchased in an account (or set of accounts).
spuTotalCommitment :: Lens' SavingsPlansUtilization (Maybe Text)
spuTotalCommitment = lens _spuTotalCommitment (\ s a -> s{_spuTotalCommitment = a})

-- | The amount of your Savings Plans commitment that was consumed from Savings Plans eligible usage in a specific period.
spuUsedCommitment :: Lens' SavingsPlansUtilization (Maybe Text)
spuUsedCommitment = lens _spuUsedCommitment (\ s a -> s{_spuUsedCommitment = a})

instance FromJSON SavingsPlansUtilization where
        parseJSON
          = withObject "SavingsPlansUtilization"
              (\ x ->
                 SavingsPlansUtilization' <$>
                   (x .:? "UnusedCommitment") <*>
                     (x .:? "UtilizationPercentage")
                     <*> (x .:? "TotalCommitment")
                     <*> (x .:? "UsedCommitment"))

instance Hashable SavingsPlansUtilization where

instance NFData SavingsPlansUtilization where

-- | The aggregated utilization metrics for your Savings Plans usage.
--
--
--
-- /See:/ 'savingsPlansUtilizationAggregates' smart constructor.
data SavingsPlansUtilizationAggregates =
  SavingsPlansUtilizationAggregates'
    { _spuaAmortizedCommitment :: !(Maybe SavingsPlansAmortizedCommitment)
    , _spuaSavings             :: !(Maybe SavingsPlansSavings)
    , _spuaUtilization         :: !SavingsPlansUtilization
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansUtilizationAggregates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spuaAmortizedCommitment' - The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.
--
-- * 'spuaSavings' - The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans, as well as the @onDemandCostEquivalent@ of the Savings Plans when considering the utilization rate.
--
-- * 'spuaUtilization' - A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.
savingsPlansUtilizationAggregates
    :: SavingsPlansUtilization -- ^ 'spuaUtilization'
    -> SavingsPlansUtilizationAggregates
savingsPlansUtilizationAggregates pUtilization_ =
  SavingsPlansUtilizationAggregates'
    { _spuaAmortizedCommitment = Nothing
    , _spuaSavings = Nothing
    , _spuaUtilization = pUtilization_
    }


-- | The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.
spuaAmortizedCommitment :: Lens' SavingsPlansUtilizationAggregates (Maybe SavingsPlansAmortizedCommitment)
spuaAmortizedCommitment = lens _spuaAmortizedCommitment (\ s a -> s{_spuaAmortizedCommitment = a})

-- | The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans, as well as the @onDemandCostEquivalent@ of the Savings Plans when considering the utilization rate.
spuaSavings :: Lens' SavingsPlansUtilizationAggregates (Maybe SavingsPlansSavings)
spuaSavings = lens _spuaSavings (\ s a -> s{_spuaSavings = a})

-- | A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.
spuaUtilization :: Lens' SavingsPlansUtilizationAggregates SavingsPlansUtilization
spuaUtilization = lens _spuaUtilization (\ s a -> s{_spuaUtilization = a})

instance FromJSON SavingsPlansUtilizationAggregates
         where
        parseJSON
          = withObject "SavingsPlansUtilizationAggregates"
              (\ x ->
                 SavingsPlansUtilizationAggregates' <$>
                   (x .:? "AmortizedCommitment") <*> (x .:? "Savings")
                     <*> (x .: "Utilization"))

instance Hashable SavingsPlansUtilizationAggregates
         where

instance NFData SavingsPlansUtilizationAggregates
         where

-- | The amount of Savings Plans utilization, in hours.
--
--
--
-- /See:/ 'savingsPlansUtilizationByTime' smart constructor.
data SavingsPlansUtilizationByTime =
  SavingsPlansUtilizationByTime'
    { _spubtAmortizedCommitment :: !(Maybe SavingsPlansAmortizedCommitment)
    , _spubtSavings             :: !(Maybe SavingsPlansSavings)
    , _spubtTimePeriod          :: !DateInterval
    , _spubtUtilization         :: !SavingsPlansUtilization
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansUtilizationByTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spubtAmortizedCommitment' - The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.
--
-- * 'spubtSavings' - The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans as well as the @onDemandCostEquivalent@ of the Savings Plans when considering the utilization rate.
--
-- * 'spubtTimePeriod' - Undocumented member.
--
-- * 'spubtUtilization' - A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.
savingsPlansUtilizationByTime
    :: DateInterval -- ^ 'spubtTimePeriod'
    -> SavingsPlansUtilization -- ^ 'spubtUtilization'
    -> SavingsPlansUtilizationByTime
savingsPlansUtilizationByTime pTimePeriod_ pUtilization_ =
  SavingsPlansUtilizationByTime'
    { _spubtAmortizedCommitment = Nothing
    , _spubtSavings = Nothing
    , _spubtTimePeriod = pTimePeriod_
    , _spubtUtilization = pUtilization_
    }


-- | The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.
spubtAmortizedCommitment :: Lens' SavingsPlansUtilizationByTime (Maybe SavingsPlansAmortizedCommitment)
spubtAmortizedCommitment = lens _spubtAmortizedCommitment (\ s a -> s{_spubtAmortizedCommitment = a})

-- | The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans as well as the @onDemandCostEquivalent@ of the Savings Plans when considering the utilization rate.
spubtSavings :: Lens' SavingsPlansUtilizationByTime (Maybe SavingsPlansSavings)
spubtSavings = lens _spubtSavings (\ s a -> s{_spubtSavings = a})

-- | Undocumented member.
spubtTimePeriod :: Lens' SavingsPlansUtilizationByTime DateInterval
spubtTimePeriod = lens _spubtTimePeriod (\ s a -> s{_spubtTimePeriod = a})

-- | A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.
spubtUtilization :: Lens' SavingsPlansUtilizationByTime SavingsPlansUtilization
spubtUtilization = lens _spubtUtilization (\ s a -> s{_spubtUtilization = a})

instance FromJSON SavingsPlansUtilizationByTime where
        parseJSON
          = withObject "SavingsPlansUtilizationByTime"
              (\ x ->
                 SavingsPlansUtilizationByTime' <$>
                   (x .:? "AmortizedCommitment") <*> (x .:? "Savings")
                     <*> (x .: "TimePeriod")
                     <*> (x .: "Utilization"))

instance Hashable SavingsPlansUtilizationByTime where

instance NFData SavingsPlansUtilizationByTime where

-- | A single daily or monthly Savings Plans utilization rate, and details for your account. Master accounts in an organization have access to member accounts. You can use @GetDimensionValues@ to determine the possible dimension values.
--
--
--
-- /See:/ 'savingsPlansUtilizationDetail' smart constructor.
data SavingsPlansUtilizationDetail =
  SavingsPlansUtilizationDetail'
    { _spudAmortizedCommitment :: !(Maybe SavingsPlansAmortizedCommitment)
    , _spudSavings             :: !(Maybe SavingsPlansSavings)
    , _spudAttributes          :: !(Maybe (Map Text Text))
    , _spudUtilization         :: !(Maybe SavingsPlansUtilization)
    , _spudSavingsPlanARN      :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavingsPlansUtilizationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spudAmortizedCommitment' - The total amortized commitment for a Savings Plans. Includes the sum of the upfront and recurring Savings Plans fees.
--
-- * 'spudSavings' - The amount saved by using existing Savings Plans. Savings returns both net savings from savings plans as well as the @onDemandCostEquivalent@ of the Savings Plans when considering the utilization rate.
--
-- * 'spudAttributes' - The attribute that applies to a specific @Dimension@ .
--
-- * 'spudUtilization' - A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.
--
-- * 'spudSavingsPlanARN' - The unique Amazon Resource Name (ARN) for a particular Savings Plan.
savingsPlansUtilizationDetail
    :: SavingsPlansUtilizationDetail
savingsPlansUtilizationDetail =
  SavingsPlansUtilizationDetail'
    { _spudAmortizedCommitment = Nothing
    , _spudSavings = Nothing
    , _spudAttributes = Nothing
    , _spudUtilization = Nothing
    , _spudSavingsPlanARN = Nothing
    }


-- | The total amortized commitment for a Savings Plans. Includes the sum of the upfront and recurring Savings Plans fees.
spudAmortizedCommitment :: Lens' SavingsPlansUtilizationDetail (Maybe SavingsPlansAmortizedCommitment)
spudAmortizedCommitment = lens _spudAmortizedCommitment (\ s a -> s{_spudAmortizedCommitment = a})

-- | The amount saved by using existing Savings Plans. Savings returns both net savings from savings plans as well as the @onDemandCostEquivalent@ of the Savings Plans when considering the utilization rate.
spudSavings :: Lens' SavingsPlansUtilizationDetail (Maybe SavingsPlansSavings)
spudSavings = lens _spudSavings (\ s a -> s{_spudSavings = a})

-- | The attribute that applies to a specific @Dimension@ .
spudAttributes :: Lens' SavingsPlansUtilizationDetail (HashMap Text Text)
spudAttributes = lens _spudAttributes (\ s a -> s{_spudAttributes = a}) . _Default . _Map

-- | A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.
spudUtilization :: Lens' SavingsPlansUtilizationDetail (Maybe SavingsPlansUtilization)
spudUtilization = lens _spudUtilization (\ s a -> s{_spudUtilization = a})

-- | The unique Amazon Resource Name (ARN) for a particular Savings Plan.
spudSavingsPlanARN :: Lens' SavingsPlansUtilizationDetail (Maybe Text)
spudSavingsPlanARN = lens _spudSavingsPlanARN (\ s a -> s{_spudSavingsPlanARN = a})

instance FromJSON SavingsPlansUtilizationDetail where
        parseJSON
          = withObject "SavingsPlansUtilizationDetail"
              (\ x ->
                 SavingsPlansUtilizationDetail' <$>
                   (x .:? "AmortizedCommitment") <*> (x .:? "Savings")
                     <*> (x .:? "Attributes" .!= mempty)
                     <*> (x .:? "Utilization")
                     <*> (x .:? "SavingsPlanArn"))

instance Hashable SavingsPlansUtilizationDetail where

instance NFData SavingsPlansUtilizationDetail where

-- | Hardware specifications for the service that you want recommendations for.
--
--
--
-- /See:/ 'serviceSpecification' smart constructor.
newtype ServiceSpecification =
  ServiceSpecification'
    { _ssEC2Specification :: Maybe EC2Specification
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssEC2Specification' - The Amazon EC2 hardware specifications that you want AWS to provide recommendations for.
serviceSpecification
    :: ServiceSpecification
serviceSpecification = ServiceSpecification' {_ssEC2Specification = Nothing}


-- | The Amazon EC2 hardware specifications that you want AWS to provide recommendations for.
ssEC2Specification :: Lens' ServiceSpecification (Maybe EC2Specification)
ssEC2Specification = lens _ssEC2Specification (\ s a -> s{_ssEC2Specification = a})

instance FromJSON ServiceSpecification where
        parseJSON
          = withObject "ServiceSpecification"
              (\ x ->
                 ServiceSpecification' <$> (x .:? "EC2Specification"))

instance Hashable ServiceSpecification where

instance NFData ServiceSpecification where

instance ToJSON ServiceSpecification where
        toJSON ServiceSpecification'{..}
          = object
              (catMaybes
                 [("EC2Specification" .=) <$> _ssEC2Specification])

-- | The values that are available for a tag.
--
--
--
-- /See:/ 'tagValues' smart constructor.
data TagValues =
  TagValues'
    { _tvValues       :: !(Maybe [Text])
    , _tvKey          :: !(Maybe Text)
    , _tvMatchOptions :: !(Maybe [MatchOption])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvValues' - The specific value of the tag.
--
-- * 'tvKey' - The key for the tag.
--
-- * 'tvMatchOptions' - The match options that you can use to filter your results. @MatchOptions@ is only applicable for only applicable for actions related to Cost Category. The default values for @MatchOptions@ is @EQUALS@ and @CASE_SENSITIVE@ .
tagValues
    :: TagValues
tagValues =
  TagValues' {_tvValues = Nothing, _tvKey = Nothing, _tvMatchOptions = Nothing}


-- | The specific value of the tag.
tvValues :: Lens' TagValues [Text]
tvValues = lens _tvValues (\ s a -> s{_tvValues = a}) . _Default . _Coerce

-- | The key for the tag.
tvKey :: Lens' TagValues (Maybe Text)
tvKey = lens _tvKey (\ s a -> s{_tvKey = a})

-- | The match options that you can use to filter your results. @MatchOptions@ is only applicable for only applicable for actions related to Cost Category. The default values for @MatchOptions@ is @EQUALS@ and @CASE_SENSITIVE@ .
tvMatchOptions :: Lens' TagValues [MatchOption]
tvMatchOptions = lens _tvMatchOptions (\ s a -> s{_tvMatchOptions = a}) . _Default . _Coerce

instance FromJSON TagValues where
        parseJSON
          = withObject "TagValues"
              (\ x ->
                 TagValues' <$>
                   (x .:? "Values" .!= mempty) <*> (x .:? "Key") <*>
                     (x .:? "MatchOptions" .!= mempty))

instance Hashable TagValues where

instance NFData TagValues where

instance ToJSON TagValues where
        toJSON TagValues'{..}
          = object
              (catMaybes
                 [("Values" .=) <$> _tvValues, ("Key" .=) <$> _tvKey,
                  ("MatchOptions" .=) <$> _tvMatchOptions])

-- | Details on recommended instance.
--
--
--
-- /See:/ 'targetInstance' smart constructor.
data TargetInstance =
  TargetInstance'
    { _tiCurrencyCode                :: !(Maybe Text)
    , _tiResourceDetails             :: !(Maybe ResourceDetails)
    , _tiDefaultTargetInstance       :: !(Maybe Bool)
    , _tiEstimatedMonthlyCost        :: !(Maybe Text)
    , _tiEstimatedMonthlySavings     :: !(Maybe Text)
    , _tiExpectedResourceUtilization :: !(Maybe ResourceUtilization)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiCurrencyCode' - The currency code that Amazon Web Services used to calculate the costs for this instance.
--
-- * 'tiResourceDetails' - Details on the target instance type.
--
-- * 'tiDefaultTargetInstance' - Indicates whether or not this recommendation is the defaulted Amazon Web Services recommendation.
--
-- * 'tiEstimatedMonthlyCost' - Expected cost to operate this instance type on a monthly basis.
--
-- * 'tiEstimatedMonthlySavings' - Estimated savings resulting from modification, on a monthly basis.
--
-- * 'tiExpectedResourceUtilization' - Expected utilization metrics for target instance type.
targetInstance
    :: TargetInstance
targetInstance =
  TargetInstance'
    { _tiCurrencyCode = Nothing
    , _tiResourceDetails = Nothing
    , _tiDefaultTargetInstance = Nothing
    , _tiEstimatedMonthlyCost = Nothing
    , _tiEstimatedMonthlySavings = Nothing
    , _tiExpectedResourceUtilization = Nothing
    }


-- | The currency code that Amazon Web Services used to calculate the costs for this instance.
tiCurrencyCode :: Lens' TargetInstance (Maybe Text)
tiCurrencyCode = lens _tiCurrencyCode (\ s a -> s{_tiCurrencyCode = a})

-- | Details on the target instance type.
tiResourceDetails :: Lens' TargetInstance (Maybe ResourceDetails)
tiResourceDetails = lens _tiResourceDetails (\ s a -> s{_tiResourceDetails = a})

-- | Indicates whether or not this recommendation is the defaulted Amazon Web Services recommendation.
tiDefaultTargetInstance :: Lens' TargetInstance (Maybe Bool)
tiDefaultTargetInstance = lens _tiDefaultTargetInstance (\ s a -> s{_tiDefaultTargetInstance = a})

-- | Expected cost to operate this instance type on a monthly basis.
tiEstimatedMonthlyCost :: Lens' TargetInstance (Maybe Text)
tiEstimatedMonthlyCost = lens _tiEstimatedMonthlyCost (\ s a -> s{_tiEstimatedMonthlyCost = a})

-- | Estimated savings resulting from modification, on a monthly basis.
tiEstimatedMonthlySavings :: Lens' TargetInstance (Maybe Text)
tiEstimatedMonthlySavings = lens _tiEstimatedMonthlySavings (\ s a -> s{_tiEstimatedMonthlySavings = a})

-- | Expected utilization metrics for target instance type.
tiExpectedResourceUtilization :: Lens' TargetInstance (Maybe ResourceUtilization)
tiExpectedResourceUtilization = lens _tiExpectedResourceUtilization (\ s a -> s{_tiExpectedResourceUtilization = a})

instance FromJSON TargetInstance where
        parseJSON
          = withObject "TargetInstance"
              (\ x ->
                 TargetInstance' <$>
                   (x .:? "CurrencyCode") <*> (x .:? "ResourceDetails")
                     <*> (x .:? "DefaultTargetInstance")
                     <*> (x .:? "EstimatedMonthlyCost")
                     <*> (x .:? "EstimatedMonthlySavings")
                     <*> (x .:? "ExpectedResourceUtilization"))

instance Hashable TargetInstance where

instance NFData TargetInstance where

-- | Details on termination recommendation.
--
--
--
-- /See:/ 'terminateRecommendationDetail' smart constructor.
data TerminateRecommendationDetail =
  TerminateRecommendationDetail'
    { _trdCurrencyCode            :: !(Maybe Text)
    , _trdEstimatedMonthlySavings :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TerminateRecommendationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trdCurrencyCode' - The currency code that Amazon Web Services used to calculate the costs for this instance.
--
-- * 'trdEstimatedMonthlySavings' - Estimated savings resulting from modification, on a monthly basis.
terminateRecommendationDetail
    :: TerminateRecommendationDetail
terminateRecommendationDetail =
  TerminateRecommendationDetail'
    {_trdCurrencyCode = Nothing, _trdEstimatedMonthlySavings = Nothing}


-- | The currency code that Amazon Web Services used to calculate the costs for this instance.
trdCurrencyCode :: Lens' TerminateRecommendationDetail (Maybe Text)
trdCurrencyCode = lens _trdCurrencyCode (\ s a -> s{_trdCurrencyCode = a})

-- | Estimated savings resulting from modification, on a monthly basis.
trdEstimatedMonthlySavings :: Lens' TerminateRecommendationDetail (Maybe Text)
trdEstimatedMonthlySavings = lens _trdEstimatedMonthlySavings (\ s a -> s{_trdEstimatedMonthlySavings = a})

instance FromJSON TerminateRecommendationDetail where
        parseJSON
          = withObject "TerminateRecommendationDetail"
              (\ x ->
                 TerminateRecommendationDetail' <$>
                   (x .:? "CurrencyCode") <*>
                     (x .:? "EstimatedMonthlySavings"))

instance Hashable TerminateRecommendationDetail where

instance NFData TerminateRecommendationDetail where

-- | The amount of utilization, in hours.
--
--
--
-- /See:/ 'utilizationByTime' smart constructor.
data UtilizationByTime =
  UtilizationByTime'
    { _ubtGroups     :: !(Maybe [ReservationUtilizationGroup])
    , _ubtTimePeriod :: !(Maybe DateInterval)
    , _ubtTotal      :: !(Maybe ReservationAggregates)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'UtilizationByTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubtGroups' - The groups that this utilization result uses.
--
-- * 'ubtTimePeriod' - The period of time that this utilization was used for.
--
-- * 'ubtTotal' - The total number of reservation hours that were used.
utilizationByTime
    :: UtilizationByTime
utilizationByTime =
  UtilizationByTime'
    {_ubtGroups = Nothing, _ubtTimePeriod = Nothing, _ubtTotal = Nothing}


-- | The groups that this utilization result uses.
ubtGroups :: Lens' UtilizationByTime [ReservationUtilizationGroup]
ubtGroups = lens _ubtGroups (\ s a -> s{_ubtGroups = a}) . _Default . _Coerce

-- | The period of time that this utilization was used for.
ubtTimePeriod :: Lens' UtilizationByTime (Maybe DateInterval)
ubtTimePeriod = lens _ubtTimePeriod (\ s a -> s{_ubtTimePeriod = a})

-- | The total number of reservation hours that were used.
ubtTotal :: Lens' UtilizationByTime (Maybe ReservationAggregates)
ubtTotal = lens _ubtTotal (\ s a -> s{_ubtTotal = a})

instance FromJSON UtilizationByTime where
        parseJSON
          = withObject "UtilizationByTime"
              (\ x ->
                 UtilizationByTime' <$>
                   (x .:? "Groups" .!= mempty) <*> (x .:? "TimePeriod")
                     <*> (x .:? "Total"))

instance Hashable UtilizationByTime where

instance NFData UtilizationByTime where
