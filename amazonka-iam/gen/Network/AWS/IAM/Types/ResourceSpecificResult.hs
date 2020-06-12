{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.ResourceSpecificResult
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IAM.Types.ResourceSpecificResult where

import Network.AWS.IAM.Types.PolicyEvaluationDecisionType
import Network.AWS.IAM.Types.Statement
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the result of the simulation of a single API operation call on a single resource.
--
--
-- This data type is used by a member of the 'EvaluationResult' data type.
--
--
-- /See:/ 'resourceSpecificResult' smart constructor.
data ResourceSpecificResult = ResourceSpecificResult'{_rsrMatchedStatements
                                                      :: !(Maybe [Statement]),
                                                      _rsrEvalDecisionDetails ::
                                                      !(Maybe
                                                          (Map Text
                                                             PolicyEvaluationDecisionType)),
                                                      _rsrMissingContextValues
                                                      :: !(Maybe [Text]),
                                                      _rsrEvalResourceName ::
                                                      !Text,
                                                      _rsrEvalResourceDecision
                                                      ::
                                                      !PolicyEvaluationDecisionType}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'ResourceSpecificResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsrMatchedStatements' - A list of the statements in the input policies that determine the result for this part of the simulation. Remember that even if multiple statements allow the operation on the resource, if /any/ statement denies that operation, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.
--
-- * 'rsrEvalDecisionDetails' - Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access.
--
-- * 'rsrMissingContextValues' - A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when a list of ARNs is included in the @ResourceArns@ parameter instead of "*". If you do not specify individual resources, by setting @ResourceArns@ to "*" or by not including the @ResourceArns@ parameter, then any missing context values are instead included under the @EvaluationResults@ section. To discover the context keys used by a set of policies, you can call 'GetContextKeysForCustomPolicy' or 'GetContextKeysForPrincipalPolicy' .
--
-- * 'rsrEvalResourceName' - The name of the simulated resource, in Amazon Resource Name (ARN) format.
--
-- * 'rsrEvalResourceDecision' - The result of the simulation of the simulated API operation on the resource specified in @EvalResourceName@ .
resourceSpecificResult
    :: Text -- ^ 'rsrEvalResourceName'
    -> PolicyEvaluationDecisionType -- ^ 'rsrEvalResourceDecision'
    -> ResourceSpecificResult
resourceSpecificResult pEvalResourceName_
  pEvalResourceDecision_
  = ResourceSpecificResult'{_rsrMatchedStatements =
                              Nothing,
                            _rsrEvalDecisionDetails = Nothing,
                            _rsrMissingContextValues = Nothing,
                            _rsrEvalResourceName = pEvalResourceName_,
                            _rsrEvalResourceDecision = pEvalResourceDecision_}

-- | A list of the statements in the input policies that determine the result for this part of the simulation. Remember that even if multiple statements allow the operation on the resource, if /any/ statement denies that operation, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.
rsrMatchedStatements :: Lens' ResourceSpecificResult [Statement]
rsrMatchedStatements = lens _rsrMatchedStatements (\ s a -> s{_rsrMatchedStatements = a}) . _Default . _Coerce

-- | Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access.
rsrEvalDecisionDetails :: Lens' ResourceSpecificResult (HashMap Text PolicyEvaluationDecisionType)
rsrEvalDecisionDetails = lens _rsrEvalDecisionDetails (\ s a -> s{_rsrEvalDecisionDetails = a}) . _Default . _Map

-- | A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when a list of ARNs is included in the @ResourceArns@ parameter instead of "*". If you do not specify individual resources, by setting @ResourceArns@ to "*" or by not including the @ResourceArns@ parameter, then any missing context values are instead included under the @EvaluationResults@ section. To discover the context keys used by a set of policies, you can call 'GetContextKeysForCustomPolicy' or 'GetContextKeysForPrincipalPolicy' .
rsrMissingContextValues :: Lens' ResourceSpecificResult [Text]
rsrMissingContextValues = lens _rsrMissingContextValues (\ s a -> s{_rsrMissingContextValues = a}) . _Default . _Coerce

-- | The name of the simulated resource, in Amazon Resource Name (ARN) format.
rsrEvalResourceName :: Lens' ResourceSpecificResult Text
rsrEvalResourceName = lens _rsrEvalResourceName (\ s a -> s{_rsrEvalResourceName = a})

-- | The result of the simulation of the simulated API operation on the resource specified in @EvalResourceName@ .
rsrEvalResourceDecision :: Lens' ResourceSpecificResult PolicyEvaluationDecisionType
rsrEvalResourceDecision = lens _rsrEvalResourceDecision (\ s a -> s{_rsrEvalResourceDecision = a})

instance FromXML ResourceSpecificResult where
        parseXML x
          = ResourceSpecificResult' <$>
              (x .@? "MatchedStatements" .!@ mempty >>=
                 may (parseXMLList "member"))
                <*>
                (x .@? "EvalDecisionDetails" .!@ mempty >>=
                   may (parseXMLMap "entry" "key" "value"))
                <*>
                (x .@? "MissingContextValues" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@ "EvalResourceName")
                <*> (x .@ "EvalResourceDecision")

instance Hashable ResourceSpecificResult where

instance NFData ResourceSpecificResult where
