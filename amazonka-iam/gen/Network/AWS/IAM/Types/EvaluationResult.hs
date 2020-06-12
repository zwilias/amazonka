{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.EvaluationResult
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IAM.Types.EvaluationResult where

import Network.AWS.IAM.Types.OrganizationsDecisionDetail
import Network.AWS.IAM.Types.PolicyEvaluationDecisionType
import Network.AWS.IAM.Types.ResourceSpecificResult
import Network.AWS.IAM.Types.Statement
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the results of a simulation.
--
--
-- This data type is used by the return parameter of @'SimulateCustomPolicy' @ and @'SimulatePrincipalPolicy' @ .
--
--
-- /See:/ 'evaluationResult' smart constructor.
data EvaluationResult = EvaluationResult'{_erMatchedStatements
                                          :: !(Maybe [Statement]),
                                          _erEvalDecisionDetails ::
                                          !(Maybe
                                              (Map Text
                                                 PolicyEvaluationDecisionType)),
                                          _erResourceSpecificResults ::
                                          !(Maybe [ResourceSpecificResult]),
                                          _erEvalResourceName :: !(Maybe Text),
                                          _erMissingContextValues ::
                                          !(Maybe [Text]),
                                          _erOrganizationsDecisionDetail ::
                                          !(Maybe OrganizationsDecisionDetail),
                                          _erEvalActionName :: !Text,
                                          _erEvalDecision ::
                                          !PolicyEvaluationDecisionType}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EvaluationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erMatchedStatements' - A list of the statements in the input policies that determine the result for this scenario. Remember that even if multiple statements allow the operation on the resource, if only one statement denies that operation, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.
--
-- * 'erEvalDecisionDetails' - Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access. See <http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_compare-resource-policies.html How IAM Roles Differ from Resource-based Policies> 
--
-- * 'erResourceSpecificResults' - The individual results of the simulation of the API operation specified in EvalActionName on each resource.
--
-- * 'erEvalResourceName' - The ARN of the resource that the indicated API operation was tested on.
--
-- * 'erMissingContextValues' - A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when the resource in a simulation is "*", either explicitly, or when the @ResourceArns@ parameter blank. If you include a list of resources, then any missing context values are instead included under the @ResourceSpecificResults@ section. To discover the context keys used by a set of policies, you can call 'GetContextKeysForCustomPolicy' or 'GetContextKeysForPrincipalPolicy' .
--
-- * 'erOrganizationsDecisionDetail' - A structure that details how AWS Organizations and its service control policies affect the results of the simulation. Only applies if the simulated user's account is part of an organization.
--
-- * 'erEvalActionName' - The name of the API operation tested on the indicated resource.
--
-- * 'erEvalDecision' - The result of the simulation.
evaluationResult
    :: Text -- ^ 'erEvalActionName'
    -> PolicyEvaluationDecisionType -- ^ 'erEvalDecision'
    -> EvaluationResult
evaluationResult pEvalActionName_ pEvalDecision_
  = EvaluationResult'{_erMatchedStatements = Nothing,
                      _erEvalDecisionDetails = Nothing,
                      _erResourceSpecificResults = Nothing,
                      _erEvalResourceName = Nothing,
                      _erMissingContextValues = Nothing,
                      _erOrganizationsDecisionDetail = Nothing,
                      _erEvalActionName = pEvalActionName_,
                      _erEvalDecision = pEvalDecision_}

-- | A list of the statements in the input policies that determine the result for this scenario. Remember that even if multiple statements allow the operation on the resource, if only one statement denies that operation, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.
erMatchedStatements :: Lens' EvaluationResult [Statement]
erMatchedStatements = lens _erMatchedStatements (\ s a -> s{_erMatchedStatements = a}) . _Default . _Coerce

-- | Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access. See <http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_compare-resource-policies.html How IAM Roles Differ from Resource-based Policies> 
erEvalDecisionDetails :: Lens' EvaluationResult (HashMap Text PolicyEvaluationDecisionType)
erEvalDecisionDetails = lens _erEvalDecisionDetails (\ s a -> s{_erEvalDecisionDetails = a}) . _Default . _Map

-- | The individual results of the simulation of the API operation specified in EvalActionName on each resource.
erResourceSpecificResults :: Lens' EvaluationResult [ResourceSpecificResult]
erResourceSpecificResults = lens _erResourceSpecificResults (\ s a -> s{_erResourceSpecificResults = a}) . _Default . _Coerce

-- | The ARN of the resource that the indicated API operation was tested on.
erEvalResourceName :: Lens' EvaluationResult (Maybe Text)
erEvalResourceName = lens _erEvalResourceName (\ s a -> s{_erEvalResourceName = a})

-- | A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when the resource in a simulation is "*", either explicitly, or when the @ResourceArns@ parameter blank. If you include a list of resources, then any missing context values are instead included under the @ResourceSpecificResults@ section. To discover the context keys used by a set of policies, you can call 'GetContextKeysForCustomPolicy' or 'GetContextKeysForPrincipalPolicy' .
erMissingContextValues :: Lens' EvaluationResult [Text]
erMissingContextValues = lens _erMissingContextValues (\ s a -> s{_erMissingContextValues = a}) . _Default . _Coerce

-- | A structure that details how AWS Organizations and its service control policies affect the results of the simulation. Only applies if the simulated user's account is part of an organization.
erOrganizationsDecisionDetail :: Lens' EvaluationResult (Maybe OrganizationsDecisionDetail)
erOrganizationsDecisionDetail = lens _erOrganizationsDecisionDetail (\ s a -> s{_erOrganizationsDecisionDetail = a})

-- | The name of the API operation tested on the indicated resource.
erEvalActionName :: Lens' EvaluationResult Text
erEvalActionName = lens _erEvalActionName (\ s a -> s{_erEvalActionName = a})

-- | The result of the simulation.
erEvalDecision :: Lens' EvaluationResult PolicyEvaluationDecisionType
erEvalDecision = lens _erEvalDecision (\ s a -> s{_erEvalDecision = a})

instance FromXML EvaluationResult where
        parseXML x
          = EvaluationResult' <$>
              (x .@? "MatchedStatements" .!@ mempty >>=
                 may (parseXMLList "member"))
                <*>
                (x .@? "EvalDecisionDetails" .!@ mempty >>=
                   may (parseXMLMap "entry" "key" "value"))
                <*>
                (x .@? "ResourceSpecificResults" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@? "EvalResourceName")
                <*>
                (x .@? "MissingContextValues" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@? "OrganizationsDecisionDetail")
                <*> (x .@ "EvalActionName")
                <*> (x .@ "EvalDecision")

instance Hashable EvaluationResult where

instance NFData EvaluationResult where
