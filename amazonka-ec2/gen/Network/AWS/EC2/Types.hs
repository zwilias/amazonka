{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types
    (
    -- * Service Configuration
      ec2

    -- * Errors

    -- * Re-exported Types
    , module Network.AWS.EC2.Internal

    -- * AccountAttributeName
    , AccountAttributeName (..)

    -- * ActivityStatus
    , ActivityStatus (..)

    -- * AddressStatus
    , AddressStatus (..)

    -- * Affinity
    , Affinity (..)

    -- * AllocationState
    , AllocationState (..)

    -- * AllocationStrategy
    , AllocationStrategy (..)

    -- * AllowsMultipleInstanceTypes
    , AllowsMultipleInstanceTypes (..)

    -- * ArchitectureType
    , ArchitectureType (..)

    -- * ArchitectureValues
    , ArchitectureValues (..)

    -- * AssociatedNetworkType
    , AssociatedNetworkType (..)

    -- * AssociationStatusCode
    , AssociationStatusCode (..)

    -- * AttachmentStatus
    , AttachmentStatus (..)

    -- * AutoAcceptSharedAttachmentsValue
    , AutoAcceptSharedAttachmentsValue (..)

    -- * AutoPlacement
    , AutoPlacement (..)

    -- * AvailabilityZoneOptInStatus
    , AvailabilityZoneOptInStatus (..)

    -- * AvailabilityZoneState
    , AvailabilityZoneState (..)

    -- * BatchState
    , BatchState (..)

    -- * BundleTaskState
    , BundleTaskState (..)

    -- * ByoipCidrState
    , ByoipCidrState (..)

    -- * CancelBatchErrorCode
    , CancelBatchErrorCode (..)

    -- * CancelSpotInstanceRequestState
    , CancelSpotInstanceRequestState (..)

    -- * CapacityReservationInstancePlatform
    , CapacityReservationInstancePlatform (..)

    -- * CapacityReservationPreference
    , CapacityReservationPreference (..)

    -- * CapacityReservationState
    , CapacityReservationState (..)

    -- * CapacityReservationTenancy
    , CapacityReservationTenancy (..)

    -- * ClientCertificateRevocationListStatusCode
    , ClientCertificateRevocationListStatusCode (..)

    -- * ClientVPNAuthenticationType
    , ClientVPNAuthenticationType (..)

    -- * ClientVPNAuthorizationRuleStatusCode
    , ClientVPNAuthorizationRuleStatusCode (..)

    -- * ClientVPNConnectionStatusCode
    , ClientVPNConnectionStatusCode (..)

    -- * ClientVPNEndpointStatusCode
    , ClientVPNEndpointStatusCode (..)

    -- * ClientVPNRouteStatusCode
    , ClientVPNRouteStatusCode (..)

    -- * ConnectionNotificationState
    , ConnectionNotificationState (..)

    -- * ConnectionNotificationType
    , ConnectionNotificationType (..)

    -- * ContainerFormat
    , ContainerFormat (..)

    -- * ConversionTaskState
    , ConversionTaskState (..)

    -- * CopyTagsFromSource
    , CopyTagsFromSource (..)

    -- * CurrencyCodeValues
    , CurrencyCodeValues (..)

    -- * DNSNameState
    , DNSNameState (..)

    -- * DNSSupportValue
    , DNSSupportValue (..)

    -- * DatafeedSubscriptionState
    , DatafeedSubscriptionState (..)

    -- * DefaultRouteTableAssociationValue
    , DefaultRouteTableAssociationValue (..)

    -- * DefaultRouteTablePropagationValue
    , DefaultRouteTablePropagationValue (..)

    -- * DefaultTargetCapacityType
    , DefaultTargetCapacityType (..)

    -- * DeleteFleetErrorCode
    , DeleteFleetErrorCode (..)

    -- * DeleteQueuedReservedInstancesErrorCode
    , DeleteQueuedReservedInstancesErrorCode (..)

    -- * DeviceType
    , DeviceType (..)

    -- * DiskImageFormat
    , DiskImageFormat (..)

    -- * DiskType
    , DiskType (..)

    -- * DomainType
    , DomainType (..)

    -- * EBSEncryptionSupport
    , EBSEncryptionSupport (..)

    -- * EBSOptimizedSupport
    , EBSOptimizedSupport (..)

    -- * ElasticGpuState
    , ElasticGpuState (..)

    -- * ElasticGpuStatus
    , ElasticGpuStatus (..)

    -- * EnaSupport
    , EnaSupport (..)

    -- * EndDateType
    , EndDateType (..)

    -- * EventCode
    , EventCode (..)

    -- * EventType
    , EventType (..)

    -- * ExcessCapacityTerminationPolicy
    , ExcessCapacityTerminationPolicy (..)

    -- * ExportEnvironment
    , ExportEnvironment (..)

    -- * ExportTaskState
    , ExportTaskState (..)

    -- * FastSnapshotRestoreStateCode
    , FastSnapshotRestoreStateCode (..)

    -- * FleetActivityStatus
    , FleetActivityStatus (..)

    -- * FleetCapacityReservationUsageStrategy
    , FleetCapacityReservationUsageStrategy (..)

    -- * FleetEventType
    , FleetEventType (..)

    -- * FleetExcessCapacityTerminationPolicy
    , FleetExcessCapacityTerminationPolicy (..)

    -- * FleetOnDemandAllocationStrategy
    , FleetOnDemandAllocationStrategy (..)

    -- * FleetStateCode
    , FleetStateCode (..)

    -- * FleetType
    , FleetType (..)

    -- * FlowLogsResourceType
    , FlowLogsResourceType (..)

    -- * FpgaImageAttributeName
    , FpgaImageAttributeName (..)

    -- * FpgaImageStateCode
    , FpgaImageStateCode (..)

    -- * GatewayType
    , GatewayType (..)

    -- * HTTPTokensState
    , HTTPTokensState (..)

    -- * HostRecovery
    , HostRecovery (..)

    -- * HostTenancy
    , HostTenancy (..)

    -- * HypervisorType
    , HypervisorType (..)

    -- * IAMInstanceProfileAssociationState
    , IAMInstanceProfileAssociationState (..)

    -- * IPv6SupportValue
    , IPv6SupportValue (..)

    -- * ImageAttributeName
    , ImageAttributeName (..)

    -- * ImageState
    , ImageState (..)

    -- * ImageTypeValues
    , ImageTypeValues (..)

    -- * InstanceAttributeName
    , InstanceAttributeName (..)

    -- * InstanceHealthStatus
    , InstanceHealthStatus (..)

    -- * InstanceInterruptionBehavior
    , InstanceInterruptionBehavior (..)

    -- * InstanceLifecycle
    , InstanceLifecycle (..)

    -- * InstanceLifecycleType
    , InstanceLifecycleType (..)

    -- * InstanceMatchCriteria
    , InstanceMatchCriteria (..)

    -- * InstanceMetadataEndpointState
    , InstanceMetadataEndpointState (..)

    -- * InstanceMetadataOptionsState
    , InstanceMetadataOptionsState (..)

    -- * InstanceStateName
    , InstanceStateName (..)

    -- * InstanceType
    , InstanceType (..)

    -- * InstanceTypeHypervisor
    , InstanceTypeHypervisor (..)

    -- * InterfacePermissionType
    , InterfacePermissionType (..)

    -- * LaunchTemplateErrorCode
    , LaunchTemplateErrorCode (..)

    -- * LaunchTemplateHTTPTokensState
    , LaunchTemplateHTTPTokensState (..)

    -- * LaunchTemplateInstanceMetadataEndpointState
    , LaunchTemplateInstanceMetadataEndpointState (..)

    -- * LaunchTemplateInstanceMetadataOptionsState
    , LaunchTemplateInstanceMetadataOptionsState (..)

    -- * ListingState
    , ListingState (..)

    -- * ListingStatus
    , ListingStatus (..)

    -- * LocalGatewayRouteState
    , LocalGatewayRouteState (..)

    -- * LocalGatewayRouteType
    , LocalGatewayRouteType (..)

    -- * LocationType
    , LocationType (..)

    -- * LogDestinationType
    , LogDestinationType (..)

    -- * MarketType
    , MarketType (..)

    -- * MembershipType
    , MembershipType (..)

    -- * ModifyAvailabilityZoneOptInStatus
    , ModifyAvailabilityZoneOptInStatus (..)

    -- * MonitoringState
    , MonitoringState (..)

    -- * MoveStatus
    , MoveStatus (..)

    -- * MulticastSupportValue
    , MulticastSupportValue (..)

    -- * NatGatewayState
    , NatGatewayState (..)

    -- * NetworkInterfaceAttribute
    , NetworkInterfaceAttribute (..)

    -- * NetworkInterfaceCreationType
    , NetworkInterfaceCreationType (..)

    -- * NetworkInterfacePermissionStateCode
    , NetworkInterfacePermissionStateCode (..)

    -- * NetworkInterfaceStatus
    , NetworkInterfaceStatus (..)

    -- * NetworkInterfaceType
    , NetworkInterfaceType (..)

    -- * OfferingClassType
    , OfferingClassType (..)

    -- * OfferingTypeValues
    , OfferingTypeValues (..)

    -- * OnDemandAllocationStrategy
    , OnDemandAllocationStrategy (..)

    -- * OperationType
    , OperationType (..)

    -- * PaymentOption
    , PaymentOption (..)

    -- * PermissionGroup
    , PermissionGroup (..)

    -- * PlacementGroupState
    , PlacementGroupState (..)

    -- * PlacementGroupStrategy
    , PlacementGroupStrategy (..)

    -- * PlacementStrategy
    , PlacementStrategy (..)

    -- * PlatformValues
    , PlatformValues (..)

    -- * PrincipalType
    , PrincipalType (..)

    -- * ProductCodeValues
    , ProductCodeValues (..)

    -- * RIProductDescription
    , RIProductDescription (..)

    -- * RecurringChargeFrequency
    , RecurringChargeFrequency (..)

    -- * ReportInstanceReasonCodes
    , ReportInstanceReasonCodes (..)

    -- * ReportStatusType
    , ReportStatusType (..)

    -- * ReservationState
    , ReservationState (..)

    -- * ReservedInstanceState
    , ReservedInstanceState (..)

    -- * ResetFpgaImageAttributeName
    , ResetFpgaImageAttributeName (..)

    -- * ResetImageAttributeName
    , ResetImageAttributeName (..)

    -- * ResourceType
    , ResourceType (..)

    -- * RootDeviceType
    , RootDeviceType (..)

    -- * RouteOrigin
    , RouteOrigin (..)

    -- * RouteState
    , RouteState (..)

    -- * RouteTableAssociationStateCode
    , RouteTableAssociationStateCode (..)

    -- * RuleAction
    , RuleAction (..)

    -- * Scope
    , Scope (..)

    -- * ServiceState
    , ServiceState (..)

    -- * ServiceType
    , ServiceType (..)

    -- * ShutdownBehavior
    , ShutdownBehavior (..)

    -- * SnapshotAttributeName
    , SnapshotAttributeName (..)

    -- * SnapshotState
    , SnapshotState (..)

    -- * SpotAllocationStrategy
    , SpotAllocationStrategy (..)

    -- * SpotInstanceInterruptionBehavior
    , SpotInstanceInterruptionBehavior (..)

    -- * SpotInstanceState
    , SpotInstanceState (..)

    -- * SpotInstanceType
    , SpotInstanceType (..)

    -- * State
    , State (..)

    -- * StatusName
    , StatusName (..)

    -- * StatusType
    , StatusType (..)

    -- * SubnetCidrBlockStateCode
    , SubnetCidrBlockStateCode (..)

    -- * SubnetState
    , SubnetState (..)

    -- * SummaryStatus
    , SummaryStatus (..)

    -- * TelemetryStatus
    , TelemetryStatus (..)

    -- * Tenancy
    , Tenancy (..)

    -- * TrafficDirection
    , TrafficDirection (..)

    -- * TrafficMirrorFilterRuleField
    , TrafficMirrorFilterRuleField (..)

    -- * TrafficMirrorNetworkService
    , TrafficMirrorNetworkService (..)

    -- * TrafficMirrorRuleAction
    , TrafficMirrorRuleAction (..)

    -- * TrafficMirrorSessionField
    , TrafficMirrorSessionField (..)

    -- * TrafficMirrorTargetType
    , TrafficMirrorTargetType (..)

    -- * TrafficType
    , TrafficType (..)

    -- * TransitGatewayAssociationState
    , TransitGatewayAssociationState (..)

    -- * TransitGatewayAttachmentResourceType
    , TransitGatewayAttachmentResourceType (..)

    -- * TransitGatewayAttachmentState
    , TransitGatewayAttachmentState (..)

    -- * TransitGatewayMulitcastDomainAssociationState
    , TransitGatewayMulitcastDomainAssociationState (..)

    -- * TransitGatewayMulticastDomainState
    , TransitGatewayMulticastDomainState (..)

    -- * TransitGatewayPropagationState
    , TransitGatewayPropagationState (..)

    -- * TransitGatewayRouteState
    , TransitGatewayRouteState (..)

    -- * TransitGatewayRouteTableState
    , TransitGatewayRouteTableState (..)

    -- * TransitGatewayRouteType
    , TransitGatewayRouteType (..)

    -- * TransitGatewayState
    , TransitGatewayState (..)

    -- * TransportProtocol
    , TransportProtocol (..)

    -- * UnlimitedSupportedInstanceFamily
    , UnlimitedSupportedInstanceFamily (..)

    -- * UnsuccessfulInstanceCreditSpecificationErrorCode
    , UnsuccessfulInstanceCreditSpecificationErrorCode (..)

    -- * UsageClassType
    , UsageClassType (..)

    -- * VPCAttributeName
    , VPCAttributeName (..)

    -- * VPCCidrBlockStateCode
    , VPCCidrBlockStateCode (..)

    -- * VPCEndpointType
    , VPCEndpointType (..)

    -- * VPCPeeringConnectionStateReasonCode
    , VPCPeeringConnectionStateReasonCode (..)

    -- * VPCState
    , VPCState (..)

    -- * VPCTenancy
    , VPCTenancy (..)

    -- * VPNEcmpSupportValue
    , VPNEcmpSupportValue (..)

    -- * VPNProtocol
    , VPNProtocol (..)

    -- * VPNState
    , VPNState (..)

    -- * VPNStaticRouteSource
    , VPNStaticRouteSource (..)

    -- * VirtualizationType
    , VirtualizationType (..)

    -- * VolumeAttachmentState
    , VolumeAttachmentState (..)

    -- * VolumeAttributeName
    , VolumeAttributeName (..)

    -- * VolumeModificationState
    , VolumeModificationState (..)

    -- * VolumeState
    , VolumeState (..)

    -- * VolumeStatusInfoStatus
    , VolumeStatusInfoStatus (..)

    -- * VolumeStatusName
    , VolumeStatusName (..)

    -- * VolumeType
    , VolumeType (..)

    -- * AccountAttribute
    , AccountAttribute
    , accountAttribute
    , aaAttributeValues
    , aaAttributeName

    -- * AccountAttributeValue
    , AccountAttributeValue
    , accountAttributeValue
    , aavAttributeValue

    -- * ActiveInstance
    , ActiveInstance
    , activeInstance
    , aiInstanceId
    , aiInstanceHealth
    , aiInstanceType
    , aiSpotInstanceRequestId

    -- * Address
    , Address
    , address
    , aAssociationId
    , aInstanceId
    , aNetworkInterfaceOwnerId
    , aAllocationId
    , aNetworkBorderGroup
    , aDomain
    , aNetworkInterfaceId
    , aPublicIPv4Pool
    , aCustomerOwnedIPv4Pool
    , aCustomerOwnedIP
    , aPrivateIPAddress
    , aPublicIP
    , aTags

    -- * AllowedPrincipal
    , AllowedPrincipal
    , allowedPrincipal
    , apPrincipalType
    , apPrincipal

    -- * AssignedPrivateIPAddress
    , AssignedPrivateIPAddress
    , assignedPrivateIPAddress
    , apiaPrivateIPAddress

    -- * AssociatedTargetNetwork
    , AssociatedTargetNetwork
    , associatedTargetNetwork
    , atnNetworkId
    , atnNetworkType

    -- * AssociationStatus
    , AssociationStatus
    , associationStatus
    , asCode
    , asMessage

    -- * AttributeBooleanValue
    , AttributeBooleanValue
    , attributeBooleanValue
    , abvValue

    -- * AttributeValue
    , AttributeValue
    , attributeValue
    , avValue

    -- * AuthorizationRule
    , AuthorizationRule
    , authorizationRule
    , arStatus
    , arAccessAll
    , arClientVPNEndpointId
    , arGroupId
    , arDestinationCidr
    , arDescription

    -- * AvailabilityZone
    , AvailabilityZone
    , availabilityZone
    , azState
    , azRegionName
    , azNetworkBorderGroup
    , azZoneId
    , azZoneName
    , azOptInStatus
    , azMessages
    , azGroupName

    -- * AvailabilityZoneMessage
    , AvailabilityZoneMessage
    , availabilityZoneMessage
    , azmMessage

    -- * AvailableCapacity
    , AvailableCapacity
    , availableCapacity
    , acAvailableInstanceCapacity
    , acAvailableVCPUs

    -- * BlobAttributeValue
    , BlobAttributeValue
    , blobAttributeValue
    , bavValue

    -- * BlockDeviceMapping
    , BlockDeviceMapping
    , blockDeviceMapping
    , bdmVirtualName
    , bdmNoDevice
    , bdmEBS
    , bdmDeviceName

    -- * BundleTask
    , BundleTask
    , bundleTask
    , btBundleTaskError
    , btBundleId
    , btInstanceId
    , btProgress
    , btStartTime
    , btState
    , btStorage
    , btUpdateTime

    -- * BundleTaskError
    , BundleTaskError
    , bundleTaskError
    , bteCode
    , bteMessage

    -- * ByoipCidr
    , ByoipCidr
    , byoipCidr
    , bcState
    , bcCidr
    , bcStatusMessage
    , bcDescription

    -- * CPUOptions
    , CPUOptions
    , cpuOptions
    , coCoreCount
    , coThreadsPerCore

    -- * CPUOptionsRequest
    , CPUOptionsRequest
    , cpuOptionsRequest
    , corCoreCount
    , corThreadsPerCore

    -- * CancelSpotFleetRequestsError
    , CancelSpotFleetRequestsError
    , cancelSpotFleetRequestsError
    , csfreCode
    , csfreMessage

    -- * CancelSpotFleetRequestsErrorItem
    , CancelSpotFleetRequestsErrorItem
    , cancelSpotFleetRequestsErrorItem
    , csfreiError
    , csfreiSpotFleetRequestId

    -- * CancelSpotFleetRequestsSuccessItem
    , CancelSpotFleetRequestsSuccessItem
    , cancelSpotFleetRequestsSuccessItem
    , csfrsiCurrentSpotFleetRequestState
    , csfrsiSpotFleetRequestId
    , csfrsiPreviousSpotFleetRequestState

    -- * CancelledSpotInstanceRequest
    , CancelledSpotInstanceRequest
    , cancelledSpotInstanceRequest
    , csirState
    , csirSpotInstanceRequestId

    -- * CapacityReservation
    , CapacityReservation
    , capacityReservation
    , crState
    , crAvailabilityZoneId
    , crCreateDate
    , crEndDate
    , crAvailableInstanceCount
    , crEphemeralStorage
    , crInstancePlatform
    , crInstanceMatchCriteria
    , crCapacityReservationId
    , crInstanceType
    , crEBSOptimized
    , crOwnerId
    , crAvailabilityZone
    , crTenancy
    , crTotalInstanceCount
    , crEndDateType
    , crTags
    , crCapacityReservationARN

    -- * CapacityReservationOptions
    , CapacityReservationOptions
    , capacityReservationOptions
    , croUsageStrategy

    -- * CapacityReservationOptionsRequest
    , CapacityReservationOptionsRequest
    , capacityReservationOptionsRequest
    , crorUsageStrategy

    -- * CapacityReservationSpecification
    , CapacityReservationSpecification
    , capacityReservationSpecification
    , cCapacityReservationTarget
    , cCapacityReservationPreference

    -- * CapacityReservationSpecificationResponse
    , CapacityReservationSpecificationResponse
    , capacityReservationSpecificationResponse
    , crsCapacityReservationTarget
    , crsCapacityReservationPreference

    -- * CapacityReservationTarget
    , CapacityReservationTarget
    , capacityReservationTarget
    , crtCapacityReservationId

    -- * CapacityReservationTargetResponse
    , CapacityReservationTargetResponse
    , capacityReservationTargetResponse
    , cCapacityReservationId

    -- * CertificateAuthentication
    , CertificateAuthentication
    , certificateAuthentication
    , caClientRootCertificateChain

    -- * CertificateAuthenticationRequest
    , CertificateAuthenticationRequest
    , certificateAuthenticationRequest
    , carClientRootCertificateChainARN

    -- * CidrAuthorizationContext
    , CidrAuthorizationContext
    , cidrAuthorizationContext
    , cacMessage
    , cacSignature

    -- * CidrBlock
    , CidrBlock
    , cidrBlock
    , cbCidrBlock

    -- * ClassicLinkDNSSupport
    , ClassicLinkDNSSupport
    , classicLinkDNSSupport
    , cldsVPCId
    , cldsClassicLinkDNSSupported

    -- * ClassicLinkInstance
    , ClassicLinkInstance
    , classicLinkInstance
    , cliInstanceId
    , cliGroups
    , cliVPCId
    , cliTags

    -- * ClassicLoadBalancer
    , ClassicLoadBalancer
    , classicLoadBalancer
    , clbName

    -- * ClassicLoadBalancersConfig
    , ClassicLoadBalancersConfig
    , classicLoadBalancersConfig
    , clbcClassicLoadBalancers

    -- * ClientCertificateRevocationListStatus
    , ClientCertificateRevocationListStatus
    , clientCertificateRevocationListStatus
    , ccrlsCode
    , ccrlsMessage

    -- * ClientData
    , ClientData
    , clientData
    , cdUploadStart
    , cdUploadSize
    , cdUploadEnd
    , cdComment

    -- * ClientVPNAuthentication
    , ClientVPNAuthentication
    , clientVPNAuthentication
    , cvaActiveDirectory
    , cvaMutualAuthentication
    , cvaType

    -- * ClientVPNAuthenticationRequest
    , ClientVPNAuthenticationRequest
    , clientVPNAuthenticationRequest
    , cvarActiveDirectory
    , cvarMutualAuthentication
    , cvarType

    -- * ClientVPNAuthorizationRuleStatus
    , ClientVPNAuthorizationRuleStatus
    , clientVPNAuthorizationRuleStatus
    , cvarsCode
    , cvarsMessage

    -- * ClientVPNConnection
    , ClientVPNConnection
    , clientVPNConnection
    , cvcIngressPackets
    , cvcStatus
    , cvcConnectionEndTime
    , cvcCommonName
    , cvcConnectionEstablishedTime
    , cvcConnectionId
    , cvcIngressBytes
    , cvcUsername
    , cvcEgressBytes
    , cvcClientVPNEndpointId
    , cvcClientIP
    , cvcEgressPackets
    , cvcTimestamp

    -- * ClientVPNConnectionStatus
    , ClientVPNConnectionStatus
    , clientVPNConnectionStatus
    , cvcsCode
    , cvcsMessage

    -- * ClientVPNEndpoint
    , ClientVPNEndpoint
    , clientVPNEndpoint
    , cveCreationTime
    , cveStatus
    , cveAssociatedTargetNetworks
    , cveSecurityGroupIds
    , cveConnectionLogOptions
    , cveSplitTunnel
    , cveTransportProtocol
    , cveVPCId
    , cveVPNPort
    , cveDeletionTime
    , cveClientCidrBlock
    , cveDNSServers
    , cveClientVPNEndpointId
    , cveServerCertificateARN
    , cveAuthenticationOptions
    , cveDescription
    , cveDNSName
    , cveVPNProtocol
    , cveTags

    -- * ClientVPNEndpointStatus
    , ClientVPNEndpointStatus
    , clientVPNEndpointStatus
    , cvesCode
    , cvesMessage

    -- * ClientVPNRoute
    , ClientVPNRoute
    , clientVPNRoute
    , cvrStatus
    , cvrOrigin
    , cvrClientVPNEndpointId
    , cvrTargetSubnet
    , cvrDestinationCidr
    , cvrType
    , cvrDescription

    -- * ClientVPNRouteStatus
    , ClientVPNRouteStatus
    , clientVPNRouteStatus
    , cvrsCode
    , cvrsMessage

    -- * CoipAddressUsage
    , CoipAddressUsage
    , coipAddressUsage
    , cauAllocationId
    , cauAWSAccountId
    , cauCoIP
    , cauAWSService

    -- * CoipPool
    , CoipPool
    , coipPool
    , cpPoolId
    , cpLocalGatewayRouteTableId
    , cpPoolCidrs
    , cpTags

    -- * ConnectionLogOptions
    , ConnectionLogOptions
    , connectionLogOptions
    , cloEnabled
    , cloCloudwatchLogStream
    , cloCloudwatchLogGroup

    -- * ConnectionLogResponseOptions
    , ConnectionLogResponseOptions
    , connectionLogResponseOptions
    , clroEnabled
    , clroCloudwatchLogStream
    , clroCloudwatchLogGroup

    -- * ConnectionNotification
    , ConnectionNotification
    , connectionNotification
    , cnConnectionNotificationState
    , cnConnectionNotificationType
    , cnConnectionEvents
    , cnServiceId
    , cnVPCEndpointId
    , cnConnectionNotificationId
    , cnConnectionNotificationARN

    -- * ConversionTask
    , ConversionTask
    , conversionTask
    , ctImportInstance
    , ctState
    , ctStatusMessage
    , ctImportVolume
    , ctConversionTaskId
    , ctExpirationTime
    , ctTags

    -- * CreateFleetError
    , CreateFleetError
    , createFleetError
    , cfeLifecycle
    , cfeLaunchTemplateAndOverrides
    , cfeErrorCode
    , cfeErrorMessage

    -- * CreateFleetInstance
    , CreateFleetInstance
    , createFleetInstance
    , cfiPlatform
    , cfiLifecycle
    , cfiLaunchTemplateAndOverrides
    , cfiInstanceType
    , cfiInstanceIds

    -- * CreateTransitGatewayVPCAttachmentRequestOptions
    , CreateTransitGatewayVPCAttachmentRequestOptions
    , createTransitGatewayVPCAttachmentRequestOptions
    , ctgvaroIPv6Support
    , ctgvaroDNSSupport

    -- * CreateVolumePermission
    , CreateVolumePermission
    , createVolumePermission
    , cvpGroup
    , cvpUserId

    -- * CreateVolumePermissionModifications
    , CreateVolumePermissionModifications
    , createVolumePermissionModifications
    , cvpmRemove
    , cvpmAdd

    -- * CreditSpecification
    , CreditSpecification
    , creditSpecification
    , csCPUCredits

    -- * CreditSpecificationRequest
    , CreditSpecificationRequest
    , creditSpecificationRequest
    , csrCPUCredits

    -- * CustomerGateway
    , CustomerGateway
    , customerGateway
    , cgCertificateARN
    , cgDeviceName
    , cgTags
    , cgBGPASN
    , cgCustomerGatewayId
    , cgIPAddress
    , cgState
    , cgType

    -- * DHCPConfiguration
    , DHCPConfiguration
    , dhcpConfiguration
    , dcValues
    , dcKey

    -- * DHCPOptions
    , DHCPOptions
    , dhcpOptions
    , doDHCPConfigurations
    , doOwnerId
    , doDHCPOptionsId
    , doTags

    -- * DNSEntry
    , DNSEntry
    , dnsEntry
    , deHostedZoneId
    , deDNSName

    -- * DNSServersOptionsModifyStructure
    , DNSServersOptionsModifyStructure
    , dnsServersOptionsModifyStructure
    , dsomsEnabled
    , dsomsCustomDNSServers

    -- * DeleteFleetError
    , DeleteFleetError
    , deleteFleetError
    , dfeCode
    , dfeMessage

    -- * DeleteFleetErrorItem
    , DeleteFleetErrorItem
    , deleteFleetErrorItem
    , dfeiError
    , dfeiFleetId

    -- * DeleteFleetSuccessItem
    , DeleteFleetSuccessItem
    , deleteFleetSuccessItem
    , dfsiCurrentFleetState
    , dfsiPreviousFleetState
    , dfsiFleetId

    -- * DeleteLaunchTemplateVersionsResponseErrorItem
    , DeleteLaunchTemplateVersionsResponseErrorItem
    , deleteLaunchTemplateVersionsResponseErrorItem
    , dltvreiLaunchTemplateName
    , dltvreiLaunchTemplateId
    , dltvreiVersionNumber
    , dltvreiResponseError

    -- * DeleteLaunchTemplateVersionsResponseSuccessItem
    , DeleteLaunchTemplateVersionsResponseSuccessItem
    , deleteLaunchTemplateVersionsResponseSuccessItem
    , dltvrsiLaunchTemplateName
    , dltvrsiLaunchTemplateId
    , dltvrsiVersionNumber

    -- * DeleteQueuedReservedInstancesError
    , DeleteQueuedReservedInstancesError
    , deleteQueuedReservedInstancesError
    , dqrieCode
    , dqrieMessage

    -- * DeregisterInstanceTagAttributeRequest
    , DeregisterInstanceTagAttributeRequest
    , deregisterInstanceTagAttributeRequest
    , ditarIncludeAllTagsOfInstance
    , ditarInstanceTagKeys

    -- * DescribeFastSnapshotRestoreSuccessItem
    , DescribeFastSnapshotRestoreSuccessItem
    , describeFastSnapshotRestoreSuccessItem
    , dfsrsiDisablingTime
    , dfsrsiState
    , dfsrsiOwnerAlias
    , dfsrsiDisabledTime
    , dfsrsiEnabledTime
    , dfsrsiOptimizingTime
    , dfsrsiOwnerId
    , dfsrsiStateTransitionReason
    , dfsrsiAvailabilityZone
    , dfsrsiSnapshotId
    , dfsrsiEnablingTime

    -- * DescribeFleetError
    , DescribeFleetError
    , describeFleetError
    , dfeLifecycle
    , dfeLaunchTemplateAndOverrides
    , dfeErrorCode
    , dfeErrorMessage

    -- * DescribeFleetsInstances
    , DescribeFleetsInstances
    , describeFleetsInstances
    , dfiPlatform
    , dfiLifecycle
    , dfiLaunchTemplateAndOverrides
    , dfiInstanceType
    , dfiInstanceIds

    -- * DirectoryServiceAuthentication
    , DirectoryServiceAuthentication
    , directoryServiceAuthentication
    , dsaDirectoryId

    -- * DirectoryServiceAuthenticationRequest
    , DirectoryServiceAuthenticationRequest
    , directoryServiceAuthenticationRequest
    , dsarDirectoryId

    -- * DisableFastSnapshotRestoreErrorItem
    , DisableFastSnapshotRestoreErrorItem
    , disableFastSnapshotRestoreErrorItem
    , dfsreiFastSnapshotRestoreStateErrors
    , dfsreiSnapshotId

    -- * DisableFastSnapshotRestoreStateError
    , DisableFastSnapshotRestoreStateError
    , disableFastSnapshotRestoreStateError
    , dfsrseCode
    , dfsrseMessage

    -- * DisableFastSnapshotRestoreStateErrorItem
    , DisableFastSnapshotRestoreStateErrorItem
    , disableFastSnapshotRestoreStateErrorItem
    , dfsrseiError
    , dfsrseiAvailabilityZone

    -- * DisableFastSnapshotRestoreSuccessItem
    , DisableFastSnapshotRestoreSuccessItem
    , disableFastSnapshotRestoreSuccessItem
    , dDisablingTime
    , dState
    , dOwnerAlias
    , dDisabledTime
    , dEnabledTime
    , dOptimizingTime
    , dOwnerId
    , dStateTransitionReason
    , dAvailabilityZone
    , dSnapshotId
    , dEnablingTime

    -- * DiskImage
    , DiskImage
    , diskImage
    , diImage
    , diVolume
    , diDescription

    -- * DiskImageDescription
    , DiskImageDescription
    , diskImageDescription
    , dSize
    , dChecksum
    , dFormat
    , dImportManifestURL

    -- * DiskImageDetail
    , DiskImageDetail
    , diskImageDetail
    , didBytes
    , didFormat
    , didImportManifestURL

    -- * DiskImageVolumeDescription
    , DiskImageVolumeDescription
    , diskImageVolumeDescription
    , divdSize
    , divdId

    -- * DiskInfo
    , DiskInfo
    , diskInfo
    , diCount
    , diSizeInGB
    , diType

    -- * EBSBlockDevice
    , EBSBlockDevice
    , ebsBlockDevice
    , ebdDeleteOnTermination
    , ebdVolumeSize
    , ebdIOPS
    , ebdEncrypted
    , ebdKMSKeyId
    , ebdVolumeType
    , ebdSnapshotId

    -- * EBSInfo
    , EBSInfo
    , ebsInfo
    , eiEncryptionSupport
    , eiEBSOptimizedSupport

    -- * EBSInstanceBlockDevice
    , EBSInstanceBlockDevice
    , ebsInstanceBlockDevice
    , eibdStatus
    , eibdDeleteOnTermination
    , eibdVolumeId
    , eibdAttachTime

    -- * EBSInstanceBlockDeviceSpecification
    , EBSInstanceBlockDeviceSpecification
    , ebsInstanceBlockDeviceSpecification
    , eibdsDeleteOnTermination
    , eibdsVolumeId

    -- * EgressOnlyInternetGateway
    , EgressOnlyInternetGateway
    , egressOnlyInternetGateway
    , eoigEgressOnlyInternetGatewayId
    , eoigAttachments
    , eoigTags

    -- * ElasticGpuAssociation
    , ElasticGpuAssociation
    , elasticGpuAssociation
    , egaElasticGpuId
    , egaElasticGpuAssociationId
    , egaElasticGpuAssociationTime
    , egaElasticGpuAssociationState

    -- * ElasticGpuHealth
    , ElasticGpuHealth
    , elasticGpuHealth
    , eghStatus

    -- * ElasticGpuSpecification
    , ElasticGpuSpecification
    , elasticGpuSpecification
    , egsType

    -- * ElasticGpuSpecificationResponse
    , ElasticGpuSpecificationResponse
    , elasticGpuSpecificationResponse
    , eType

    -- * ElasticGpus
    , ElasticGpus
    , elasticGpus
    , egInstanceId
    , egElasticGpuType
    , egElasticGpuId
    , egElasticGpuState
    , egElasticGpuHealth
    , egAvailabilityZone
    , egTags

    -- * ElasticInferenceAccelerator
    , ElasticInferenceAccelerator
    , elasticInferenceAccelerator
    , eiaCount
    , eiaType

    -- * ElasticInferenceAcceleratorAssociation
    , ElasticInferenceAcceleratorAssociation
    , elasticInferenceAcceleratorAssociation
    , eiaaElasticInferenceAcceleratorAssociationState
    , eiaaElasticInferenceAcceleratorAssociationTime
    , eiaaElasticInferenceAcceleratorARN
    , eiaaElasticInferenceAcceleratorAssociationId

    -- * EnableFastSnapshotRestoreErrorItem
    , EnableFastSnapshotRestoreErrorItem
    , enableFastSnapshotRestoreErrorItem
    , efsreiFastSnapshotRestoreStateErrors
    , efsreiSnapshotId

    -- * EnableFastSnapshotRestoreStateError
    , EnableFastSnapshotRestoreStateError
    , enableFastSnapshotRestoreStateError
    , efsrseCode
    , efsrseMessage

    -- * EnableFastSnapshotRestoreStateErrorItem
    , EnableFastSnapshotRestoreStateErrorItem
    , enableFastSnapshotRestoreStateErrorItem
    , efsrseiError
    , efsrseiAvailabilityZone

    -- * EnableFastSnapshotRestoreSuccessItem
    , EnableFastSnapshotRestoreSuccessItem
    , enableFastSnapshotRestoreSuccessItem
    , efsrsiDisablingTime
    , efsrsiState
    , efsrsiOwnerAlias
    , efsrsiDisabledTime
    , efsrsiEnabledTime
    , efsrsiOptimizingTime
    , efsrsiOwnerId
    , efsrsiStateTransitionReason
    , efsrsiAvailabilityZone
    , efsrsiSnapshotId
    , efsrsiEnablingTime

    -- * EventInformation
    , EventInformation
    , eventInformation
    , eiInstanceId
    , eiEventDescription
    , eiEventSubType

    -- * ExportImageTask
    , ExportImageTask
    , exportImageTask
    , eitStatus
    , eitProgress
    , eitExportImageTaskId
    , eitStatusMessage
    , eitImageId
    , eitDescription
    , eitS3ExportLocation

    -- * ExportTask
    , ExportTask
    , exportTask
    , etTags
    , etDescription
    , etExportTaskId
    , etExportToS3Task
    , etInstanceExportDetails
    , etState
    , etStatusMessage

    -- * ExportTaskS3Location
    , ExportTaskS3Location
    , exportTaskS3Location
    , etslS3Prefix
    , etslS3Bucket

    -- * ExportTaskS3LocationRequest
    , ExportTaskS3LocationRequest
    , exportTaskS3LocationRequest
    , etslrS3Prefix
    , etslrS3Bucket

    -- * ExportToS3Task
    , ExportToS3Task
    , exportToS3Task
    , etstS3Key
    , etstContainerFormat
    , etstS3Bucket
    , etstDiskImageFormat

    -- * ExportToS3TaskSpecification
    , ExportToS3TaskSpecification
    , exportToS3TaskSpecification
    , etstsContainerFormat
    , etstsS3Prefix
    , etstsS3Bucket
    , etstsDiskImageFormat

    -- * FailedQueuedPurchaseDeletion
    , FailedQueuedPurchaseDeletion
    , failedQueuedPurchaseDeletion
    , fqpdError
    , fqpdReservedInstancesId

    -- * Filter
    , Filter
    , filter'
    , fValues
    , fName

    -- * FleetData
    , FleetData
    , fleetData
    , fdClientToken
    , fdTargetCapacitySpecification
    , fdSpotOptions
    , fdExcessCapacityTerminationPolicy
    , fdOnDemandOptions
    , fdFleetState
    , fdLaunchTemplateConfigs
    , fdValidUntil
    , fdTerminateInstancesWithExpiration
    , fdInstances
    , fdFulfilledCapacity
    , fdType
    , fdValidFrom
    , fdReplaceUnhealthyInstances
    , fdFulfilledOnDemandCapacity
    , fdFleetId
    , fdErrors
    , fdCreateTime
    , fdTags
    , fdActivityStatus

    -- * FleetLaunchTemplateConfig
    , FleetLaunchTemplateConfig
    , fleetLaunchTemplateConfig
    , fltcOverrides
    , fltcLaunchTemplateSpecification

    -- * FleetLaunchTemplateConfigRequest
    , FleetLaunchTemplateConfigRequest
    , fleetLaunchTemplateConfigRequest
    , fltcrOverrides
    , fltcrLaunchTemplateSpecification

    -- * FleetLaunchTemplateOverrides
    , FleetLaunchTemplateOverrides
    , fleetLaunchTemplateOverrides
    , fltoPriority
    , fltoWeightedCapacity
    , fltoSubnetId
    , fltoInstanceType
    , fltoAvailabilityZone
    , fltoPlacement
    , fltoMaxPrice

    -- * FleetLaunchTemplateOverridesRequest
    , FleetLaunchTemplateOverridesRequest
    , fleetLaunchTemplateOverridesRequest
    , fltorPriority
    , fltorWeightedCapacity
    , fltorSubnetId
    , fltorInstanceType
    , fltorAvailabilityZone
    , fltorPlacement
    , fltorMaxPrice

    -- * FleetLaunchTemplateSpecification
    , FleetLaunchTemplateSpecification
    , fleetLaunchTemplateSpecification
    , fltsLaunchTemplateName
    , fltsLaunchTemplateId
    , fltsVersion

    -- * FleetLaunchTemplateSpecificationRequest
    , FleetLaunchTemplateSpecificationRequest
    , fleetLaunchTemplateSpecificationRequest
    , fltsrLaunchTemplateName
    , fltsrLaunchTemplateId
    , fltsrVersion

    -- * FlowLog
    , FlowLog
    , flowLog
    , flCreationTime
    , flLogFormat
    , flMaxAggregationInterval
    , flResourceId
    , flFlowLogStatus
    , flTrafficType
    , flLogDestination
    , flDeliverLogsStatus
    , flDeliverLogsErrorMessage
    , flLogGroupName
    , flDeliverLogsPermissionARN
    , flLogDestinationType
    , flFlowLogId
    , flTags

    -- * FpgaDeviceInfo
    , FpgaDeviceInfo
    , fpgaDeviceInfo
    , fdiMemoryInfo
    , fdiManufacturer
    , fdiCount
    , fdiName

    -- * FpgaDeviceMemoryInfo
    , FpgaDeviceMemoryInfo
    , fpgaDeviceMemoryInfo
    , fdmiSizeInMiB

    -- * FpgaImage
    , FpgaImage
    , fpgaImage
    , fiShellVersion
    , fiPciId
    , fiState
    , fiOwnerAlias
    , fiFpgaImageId
    , fiDataRetentionSupport
    , fiOwnerId
    , fiUpdateTime
    , fiName
    , fiProductCodes
    , fiDescription
    , fiCreateTime
    , fiTags
    , fiPublic
    , fiFpgaImageGlobalId

    -- * FpgaImageAttribute
    , FpgaImageAttribute
    , fpgaImageAttribute
    , fiaFpgaImageId
    , fiaName
    , fiaProductCodes
    , fiaDescription
    , fiaLoadPermissions

    -- * FpgaImageState
    , FpgaImageState
    , fpgaImageState
    , fisCode
    , fisMessage

    -- * FpgaInfo
    , FpgaInfo
    , fpgaInfo
    , fiTotalFpgaMemoryInMiB
    , fiFpgas

    -- * GpuDeviceInfo
    , GpuDeviceInfo
    , gpuDeviceInfo
    , gdiMemoryInfo
    , gdiManufacturer
    , gdiCount
    , gdiName

    -- * GpuDeviceMemoryInfo
    , GpuDeviceMemoryInfo
    , gpuDeviceMemoryInfo
    , gdmiSizeInMiB

    -- * GpuInfo
    , GpuInfo
    , gpuInfo
    , giTotalGpuMemoryInMiB
    , giGpus

    -- * GroupIdentifier
    , GroupIdentifier
    , groupIdentifier
    , giGroupId
    , giGroupName

    -- * HibernationOptions
    , HibernationOptions
    , hibernationOptions
    , hoConfigured

    -- * HibernationOptionsRequest
    , HibernationOptionsRequest
    , hibernationOptionsRequest
    , horConfigured

    -- * HistoryRecord
    , HistoryRecord
    , historyRecord
    , hrEventType
    , hrEventInformation
    , hrTimestamp

    -- * HistoryRecordEntry
    , HistoryRecordEntry
    , historyRecordEntry
    , hreEventType
    , hreEventInformation
    , hreTimestamp

    -- * Host
    , Host
    , host
    , hReleaseTime
    , hState
    , hClientToken
    , hAvailabilityZoneId
    , hHostId
    , hAvailableCapacity
    , hHostReservationId
    , hAllowsMultipleInstanceTypes
    , hHostProperties
    , hOwnerId
    , hAvailabilityZone
    , hInstances
    , hAllocationTime
    , hMemberOfServiceLinkedResourceGroup
    , hHostRecovery
    , hAutoPlacement
    , hTags

    -- * HostInstance
    , HostInstance
    , hostInstance
    , hiInstanceId
    , hiInstanceType
    , hiOwnerId

    -- * HostOffering
    , HostOffering
    , hostOffering
    , hoInstanceFamily
    , hoCurrencyCode
    , hoHourlyPrice
    , hoUpfrontPrice
    , hoOfferingId
    , hoDuration
    , hoPaymentOption

    -- * HostProperties
    , HostProperties
    , hostProperties
    , hpInstanceFamily
    , hpInstanceType
    , hpTotalVCPUs
    , hpCores
    , hpSockets

    -- * HostReservation
    , HostReservation
    , hostReservation
    , hrState
    , hrInstanceFamily
    , hrCurrencyCode
    , hrHostReservationId
    , hrStart
    , hrHourlyPrice
    , hrCount
    , hrUpfrontPrice
    , hrEnd
    , hrHostIdSet
    , hrOfferingId
    , hrDuration
    , hrTags
    , hrPaymentOption

    -- * IAMInstanceProfile
    , IAMInstanceProfile
    , iamInstanceProfile
    , iapARN
    , iapId

    -- * IAMInstanceProfileAssociation
    , IAMInstanceProfileAssociation
    , iamInstanceProfileAssociation
    , iapaAssociationId
    , iapaInstanceId
    , iapaState
    , iapaIAMInstanceProfile
    , iapaTimestamp

    -- * IAMInstanceProfileSpecification
    , IAMInstanceProfileSpecification
    , iamInstanceProfileSpecification
    , iapsARN
    , iapsName

    -- * ICMPTypeCode
    , ICMPTypeCode
    , icmpTypeCode
    , itcCode
    , itcType

    -- * IKEVersionsListValue
    , IKEVersionsListValue
    , iKEVersionsListValue
    , ikevlvValue

    -- * IKEVersionsRequestListValue
    , IKEVersionsRequestListValue
    , iKEVersionsRequestListValue
    , ikevrlvValue

    -- * IPPermission
    , IPPermission
    , ipPermission
    , ipFromPort
    , ipUserIdGroupPairs
    , ipPrefixListIds
    , ipToPort
    , ipIPv6Ranges
    , ipIPRanges
    , ipIPProtocol

    -- * IPRange
    , IPRange
    , ipRange
    , iprDescription
    , iprCidrIP

    -- * IPv6CidrAssociation
    , IPv6CidrAssociation
    , ipv6CidrAssociation
    , icaAssociatedResource
    , icaIPv6Cidr

    -- * IPv6CidrBlock
    , IPv6CidrBlock
    , ipv6CidrBlock
    , icbIPv6CidrBlock

    -- * IPv6Pool
    , IPv6Pool
    , ipv6Pool
    , ipPoolCidrBlocks
    , ipPoolId
    , ipDescription
    , ipTags

    -- * IPv6Range
    , IPv6Range
    , ipv6Range
    , irCidrIPv6
    , irDescription

    -- * IdFormat
    , IdFormat
    , idFormat
    , ifUseLongIds
    , ifDeadline
    , ifResource

    -- * Image
    , Image
    , image
    , iPlatform
    , iPlatformDetails
    , iEnaSupport
    , iImageOwnerAlias
    , iUsageOperation
    , iRAMDiskId
    , iKernelId
    , iRootDeviceName
    , iSRIOVNetSupport
    , iName
    , iCreationDate
    , iProductCodes
    , iStateReason
    , iDescription
    , iBlockDeviceMappings
    , iTags
    , iImageId
    , iImageLocation
    , iState
    , iOwnerId
    , iPublic
    , iArchitecture
    , iImageType
    , iRootDeviceType
    , iVirtualizationType
    , iHypervisor

    -- * ImageDiskContainer
    , ImageDiskContainer
    , imageDiskContainer
    , idcFormat
    , idcURL
    , idcDeviceName
    , idcUserBucket
    , idcDescription
    , idcSnapshotId

    -- * ImportImageLicenseConfigurationRequest
    , ImportImageLicenseConfigurationRequest
    , importImageLicenseConfigurationRequest
    , iilcrLicenseConfigurationARN

    -- * ImportImageLicenseConfigurationResponse
    , ImportImageLicenseConfigurationResponse
    , importImageLicenseConfigurationResponse
    , iilcLicenseConfigurationARN

    -- * ImportImageTask
    , ImportImageTask
    , importImageTask
    , iitStatus
    , iitHypervisor
    , iitPlatform
    , iitProgress
    , iitLicenseSpecifications
    , iitLicenseType
    , iitSnapshotDetails
    , iitEncrypted
    , iitKMSKeyId
    , iitStatusMessage
    , iitImageId
    , iitImportTaskId
    , iitArchitecture
    , iitDescription
    , iitTags

    -- * ImportInstanceLaunchSpecification
    , ImportInstanceLaunchSpecification
    , importInstanceLaunchSpecification
    , iilsAdditionalInfo
    , iilsGroupNames
    , iilsSubnetId
    , iilsInstanceType
    , iilsGroupIds
    , iilsUserData
    , iilsMonitoring
    , iilsPrivateIPAddress
    , iilsInstanceInitiatedShutdownBehavior
    , iilsArchitecture
    , iilsPlacement

    -- * ImportInstanceTaskDetails
    , ImportInstanceTaskDetails
    , importInstanceTaskDetails
    , iitdInstanceId
    , iitdPlatform
    , iitdVolumes
    , iitdDescription

    -- * ImportInstanceVolumeDetailItem
    , ImportInstanceVolumeDetailItem
    , importInstanceVolumeDetailItem
    , iivdiStatus
    , iivdiBytesConverted
    , iivdiImage
    , iivdiVolume
    , iivdiAvailabilityZone
    , iivdiStatusMessage
    , iivdiDescription

    -- * ImportSnapshotTask
    , ImportSnapshotTask
    , importSnapshotTask
    , istSnapshotTaskDetail
    , istImportTaskId
    , istDescription
    , istTags

    -- * ImportVolumeTaskDetails
    , ImportVolumeTaskDetails
    , importVolumeTaskDetails
    , ivtdBytesConverted
    , ivtdImage
    , ivtdVolume
    , ivtdAvailabilityZone
    , ivtdDescription

    -- * InferenceAcceleratorInfo
    , InferenceAcceleratorInfo
    , inferenceAcceleratorInfo
    , iaiAccelerators

    -- * InferenceDeviceInfo
    , InferenceDeviceInfo
    , inferenceDeviceInfo
    , idiManufacturer
    , idiCount
    , idiName

    -- * Instance
    , Instance
    , instance'
    , insPublicDNSName
    , insPlatform
    , insSecurityGroups
    , insClientToken
    , insEnaSupport
    , insSourceDestCheck
    , insElasticGpuAssociations
    , insVPCId
    , insKeyName
    , insNetworkInterfaces
    , insOutpostARN
    , insRAMDiskId
    , insCPUOptions
    , insSubnetId
    , insKernelId
    , insRootDeviceName
    , insCapacityReservationId
    , insCapacityReservationSpecification
    , insSRIOVNetSupport
    , insEBSOptimized
    , insStateTransitionReason
    , insHibernationOptions
    , insInstanceLifecycle
    , insIAMInstanceProfile
    , insPrivateIPAddress
    , insMetadataOptions
    , insProductCodes
    , insSpotInstanceRequestId
    , insLicenses
    , insElasticInferenceAcceleratorAssociations
    , insPrivateDNSName
    , insStateReason
    , insBlockDeviceMappings
    , insPublicIPAddress
    , insTags
    , insInstanceId
    , insImageId
    , insAMILaunchIndex
    , insInstanceType
    , insLaunchTime
    , insPlacement
    , insMonitoring
    , insArchitecture
    , insRootDeviceType
    , insVirtualizationType
    , insHypervisor
    , insState

    -- * InstanceBlockDeviceMapping
    , InstanceBlockDeviceMapping
    , instanceBlockDeviceMapping
    , ibdmEBS
    , ibdmDeviceName

    -- * InstanceBlockDeviceMappingSpecification
    , InstanceBlockDeviceMappingSpecification
    , instanceBlockDeviceMappingSpecification
    , ibdmsVirtualName
    , ibdmsNoDevice
    , ibdmsEBS
    , ibdmsDeviceName

    -- * InstanceCapacity
    , InstanceCapacity
    , instanceCapacity
    , icAvailableCapacity
    , icInstanceType
    , icTotalCapacity

    -- * InstanceCount
    , InstanceCount
    , instanceCount
    , icState
    , icInstanceCount

    -- * InstanceCreditSpecification
    , InstanceCreditSpecification
    , instanceCreditSpecification
    , icsInstanceId
    , icsCPUCredits

    -- * InstanceCreditSpecificationRequest
    , InstanceCreditSpecificationRequest
    , instanceCreditSpecificationRequest
    , icsrInstanceId
    , icsrCPUCredits

    -- * InstanceExportDetails
    , InstanceExportDetails
    , instanceExportDetails
    , iedTargetEnvironment
    , iedInstanceId

    -- * InstanceFamilyCreditSpecification
    , InstanceFamilyCreditSpecification
    , instanceFamilyCreditSpecification
    , ifcsInstanceFamily
    , ifcsCPUCredits

    -- * InstanceIPv6Address
    , InstanceIPv6Address
    , instanceIPv6Address
    , iiaIPv6Address

    -- * InstanceIPv6AddressRequest
    , InstanceIPv6AddressRequest
    , instanceIPv6AddressRequest
    , iiarIPv6Address

    -- * InstanceMarketOptionsRequest
    , InstanceMarketOptionsRequest
    , instanceMarketOptionsRequest
    , imorMarketType
    , imorSpotOptions

    -- * InstanceMetadataOptionsRequest
    , InstanceMetadataOptionsRequest
    , instanceMetadataOptionsRequest
    , imorHTTPEndpoint
    , imorHTTPPutResponseHopLimit
    , imorHTTPTokens

    -- * InstanceMetadataOptionsResponse
    , InstanceMetadataOptionsResponse
    , instanceMetadataOptionsResponse
    , imoState
    , imoHTTPEndpoint
    , imoHTTPPutResponseHopLimit
    , imoHTTPTokens

    -- * InstanceMonitoring
    , InstanceMonitoring
    , instanceMonitoring
    , imInstanceId
    , imMonitoring

    -- * InstanceNetworkInterface
    , InstanceNetworkInterface
    , instanceNetworkInterface
    , iniGroups
    , iniStatus
    , iniPrivateIPAddresses
    , iniSourceDestCheck
    , iniInterfaceType
    , iniVPCId
    , iniNetworkInterfaceId
    , iniSubnetId
    , iniMACAddress
    , iniAttachment
    , iniOwnerId
    , iniPrivateIPAddress
    , iniPrivateDNSName
    , iniDescription
    , iniAssociation
    , iniIPv6Addresses

    -- * InstanceNetworkInterfaceAssociation
    , InstanceNetworkInterfaceAssociation
    , instanceNetworkInterfaceAssociation
    , iniaPublicDNSName
    , iniaIPOwnerId
    , iniaPublicIP

    -- * InstanceNetworkInterfaceAttachment
    , InstanceNetworkInterfaceAttachment
    , instanceNetworkInterfaceAttachment
    , iniaStatus
    , iniaDeleteOnTermination
    , iniaAttachmentId
    , iniaAttachTime
    , iniaDeviceIndex

    -- * InstanceNetworkInterfaceSpecification
    , InstanceNetworkInterfaceSpecification
    , instanceNetworkInterfaceSpecification
    , inisGroups
    , inisPrivateIPAddresses
    , inisDeleteOnTermination
    , inisAssociatePublicIPAddress
    , inisInterfaceType
    , inisNetworkInterfaceId
    , inisSubnetId
    , inisIPv6AddressCount
    , inisPrivateIPAddress
    , inisSecondaryPrivateIPAddressCount
    , inisDescription
    , inisDeviceIndex
    , inisIPv6Addresses

    -- * InstancePrivateIPAddress
    , InstancePrivateIPAddress
    , instancePrivateIPAddress
    , ipiaPrimary
    , ipiaPrivateIPAddress
    , ipiaPrivateDNSName
    , ipiaAssociation

    -- * InstanceSpecification
    , InstanceSpecification
    , instanceSpecification
    , isInstanceId
    , isExcludeBootVolume

    -- * InstanceState
    , InstanceState
    , instanceState
    , isName
    , isCode

    -- * InstanceStateChange
    , InstanceStateChange
    , instanceStateChange
    , iscInstanceId
    , iscCurrentState
    , iscPreviousState

    -- * InstanceStatus
    , InstanceStatus
    , instanceStatus
    , iInstanceId
    , iOutpostARN
    , iSystemStatus
    , iEvents
    , iAvailabilityZone
    , iInstanceStatus
    , iInstanceState

    -- * InstanceStatusDetails
    , InstanceStatusDetails
    , instanceStatusDetails
    , isdStatus
    , isdImpairedSince
    , isdName

    -- * InstanceStatusEvent
    , InstanceStatusEvent
    , instanceStatusEvent
    , iseNotBefore
    , iseCode
    , iseInstanceEventId
    , iseDescription
    , iseNotBeforeDeadline
    , iseNotAfter

    -- * InstanceStatusSummary
    , InstanceStatusSummary
    , instanceStatusSummary
    , issDetails
    , issStatus

    -- * InstanceStorageInfo
    , InstanceStorageInfo
    , instanceStorageInfo
    , isiTotalSizeInGB
    , isiDisks

    -- * InstanceTagNotificationAttribute
    , InstanceTagNotificationAttribute
    , instanceTagNotificationAttribute
    , itnaIncludeAllTagsOfInstance
    , itnaInstanceTagKeys

    -- * InstanceTypeInfo
    , InstanceTypeInfo
    , instanceTypeInfo
    , itiHypervisor
    , itiCurrentGeneration
    , itiMemoryInfo
    , itiPlacementGroupInfo
    , itiSupportedRootDeviceTypes
    , itiSupportedUsageClasses
    , itiInstanceStorageSupported
    , itiFpgaInfo
    , itiBurstablePerformanceSupported
    , itiInstanceType
    , itiGpuInfo
    , itiEBSInfo
    , itiAutoRecoverySupported
    , itiInferenceAcceleratorInfo
    , itiBareMetal
    , itiNetworkInfo
    , itiProcessorInfo
    , itiFreeTierEligible
    , itiVCPUInfo
    , itiInstanceStorageInfo
    , itiDedicatedHostsSupported
    , itiHibernationSupported

    -- * InstanceTypeOffering
    , InstanceTypeOffering
    , instanceTypeOffering
    , itoLocation
    , itoInstanceType
    , itoLocationType

    -- * InstanceUsage
    , InstanceUsage
    , instanceUsage
    , iuAccountId
    , iuUsedInstanceCount

    -- * InternetGateway
    , InternetGateway
    , internetGateway
    , igAttachments
    , igOwnerId
    , igTags
    , igInternetGatewayId

    -- * InternetGatewayAttachment
    , InternetGatewayAttachment
    , internetGatewayAttachment
    , igaState
    , igaVPCId

    -- * KeyPairInfo
    , KeyPairInfo
    , keyPairInfo
    , kpiKeyFingerprint
    , kpiKeyName
    , kpiKeyPairId
    , kpiTags

    -- * LastError
    , LastError
    , lastError
    , leCode
    , leMessage

    -- * LaunchPermission
    , LaunchPermission
    , launchPermission
    , lGroup
    , lUserId

    -- * LaunchPermissionModifications
    , LaunchPermissionModifications
    , launchPermissionModifications
    , lRemove
    , lAdd

    -- * LaunchSpecification
    , LaunchSpecification
    , launchSpecification
    , lsSecurityGroups
    , lsKeyName
    , lsNetworkInterfaces
    , lsRAMDiskId
    , lsSubnetId
    , lsKernelId
    , lsInstanceType
    , lsEBSOptimized
    , lsUserData
    , lsMonitoring
    , lsIAMInstanceProfile
    , lsImageId
    , lsAddressingType
    , lsBlockDeviceMappings
    , lsPlacement

    -- * LaunchTemplate
    , LaunchTemplate
    , launchTemplate
    , ltLaunchTemplateName
    , ltLatestVersionNumber
    , ltLaunchTemplateId
    , ltCreatedBy
    , ltDefaultVersionNumber
    , ltCreateTime
    , ltTags

    -- * LaunchTemplateAndOverridesResponse
    , LaunchTemplateAndOverridesResponse
    , launchTemplateAndOverridesResponse
    , ltaoOverrides
    , ltaoLaunchTemplateSpecification

    -- * LaunchTemplateBlockDeviceMapping
    , LaunchTemplateBlockDeviceMapping
    , launchTemplateBlockDeviceMapping
    , ltbdmVirtualName
    , ltbdmNoDevice
    , ltbdmEBS
    , ltbdmDeviceName

    -- * LaunchTemplateBlockDeviceMappingRequest
    , LaunchTemplateBlockDeviceMappingRequest
    , launchTemplateBlockDeviceMappingRequest
    , ltbdmrVirtualName
    , ltbdmrNoDevice
    , ltbdmrEBS
    , ltbdmrDeviceName

    -- * LaunchTemplateCPUOptions
    , LaunchTemplateCPUOptions
    , launchTemplateCPUOptions
    , ltcoCoreCount
    , ltcoThreadsPerCore

    -- * LaunchTemplateCPUOptionsRequest
    , LaunchTemplateCPUOptionsRequest
    , launchTemplateCPUOptionsRequest
    , ltcorCoreCount
    , ltcorThreadsPerCore

    -- * LaunchTemplateCapacityReservationSpecificationRequest
    , LaunchTemplateCapacityReservationSpecificationRequest
    , launchTemplateCapacityReservationSpecificationRequest
    , ltcrsrCapacityReservationTarget
    , ltcrsrCapacityReservationPreference

    -- * LaunchTemplateCapacityReservationSpecificationResponse
    , LaunchTemplateCapacityReservationSpecificationResponse
    , launchTemplateCapacityReservationSpecificationResponse
    , ltcrsCapacityReservationTarget
    , ltcrsCapacityReservationPreference

    -- * LaunchTemplateConfig
    , LaunchTemplateConfig
    , launchTemplateConfig
    , ltcOverrides
    , ltcLaunchTemplateSpecification

    -- * LaunchTemplateEBSBlockDevice
    , LaunchTemplateEBSBlockDevice
    , launchTemplateEBSBlockDevice
    , ltebdDeleteOnTermination
    , ltebdVolumeSize
    , ltebdIOPS
    , ltebdEncrypted
    , ltebdKMSKeyId
    , ltebdVolumeType
    , ltebdSnapshotId

    -- * LaunchTemplateEBSBlockDeviceRequest
    , LaunchTemplateEBSBlockDeviceRequest
    , launchTemplateEBSBlockDeviceRequest
    , ltebdrDeleteOnTermination
    , ltebdrVolumeSize
    , ltebdrIOPS
    , ltebdrEncrypted
    , ltebdrKMSKeyId
    , ltebdrVolumeType
    , ltebdrSnapshotId

    -- * LaunchTemplateElasticInferenceAccelerator
    , LaunchTemplateElasticInferenceAccelerator
    , launchTemplateElasticInferenceAccelerator
    , lteiaCount
    , lteiaType

    -- * LaunchTemplateElasticInferenceAcceleratorResponse
    , LaunchTemplateElasticInferenceAcceleratorResponse
    , launchTemplateElasticInferenceAcceleratorResponse
    , lCount
    , lType

    -- * LaunchTemplateHibernationOptions
    , LaunchTemplateHibernationOptions
    , launchTemplateHibernationOptions
    , lthoConfigured

    -- * LaunchTemplateHibernationOptionsRequest
    , LaunchTemplateHibernationOptionsRequest
    , launchTemplateHibernationOptionsRequest
    , lthorConfigured

    -- * LaunchTemplateIAMInstanceProfileSpecification
    , LaunchTemplateIAMInstanceProfileSpecification
    , launchTemplateIAMInstanceProfileSpecification
    , ltiapsARN
    , ltiapsName

    -- * LaunchTemplateIAMInstanceProfileSpecificationRequest
    , LaunchTemplateIAMInstanceProfileSpecificationRequest
    , launchTemplateIAMInstanceProfileSpecificationRequest
    , ltiapsrARN
    , ltiapsrName

    -- * LaunchTemplateInstanceMarketOptions
    , LaunchTemplateInstanceMarketOptions
    , launchTemplateInstanceMarketOptions
    , ltimoMarketType
    , ltimoSpotOptions

    -- * LaunchTemplateInstanceMarketOptionsRequest
    , LaunchTemplateInstanceMarketOptionsRequest
    , launchTemplateInstanceMarketOptionsRequest
    , ltimorMarketType
    , ltimorSpotOptions

    -- * LaunchTemplateInstanceMetadataOptions
    , LaunchTemplateInstanceMetadataOptions
    , launchTemplateInstanceMetadataOptions
    , ltimoState
    , ltimoHTTPEndpoint
    , ltimoHTTPPutResponseHopLimit
    , ltimoHTTPTokens

    -- * LaunchTemplateInstanceMetadataOptionsRequest
    , LaunchTemplateInstanceMetadataOptionsRequest
    , launchTemplateInstanceMetadataOptionsRequest
    , ltimorHTTPEndpoint
    , ltimorHTTPPutResponseHopLimit
    , ltimorHTTPTokens

    -- * LaunchTemplateInstanceNetworkInterfaceSpecification
    , LaunchTemplateInstanceNetworkInterfaceSpecification
    , launchTemplateInstanceNetworkInterfaceSpecification
    , ltinisGroups
    , ltinisPrivateIPAddresses
    , ltinisDeleteOnTermination
    , ltinisAssociatePublicIPAddress
    , ltinisInterfaceType
    , ltinisNetworkInterfaceId
    , ltinisSubnetId
    , ltinisIPv6AddressCount
    , ltinisPrivateIPAddress
    , ltinisSecondaryPrivateIPAddressCount
    , ltinisDescription
    , ltinisDeviceIndex
    , ltinisIPv6Addresses

    -- * LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    , LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    , launchTemplateInstanceNetworkInterfaceSpecificationRequest
    , ltinisrGroups
    , ltinisrPrivateIPAddresses
    , ltinisrDeleteOnTermination
    , ltinisrAssociatePublicIPAddress
    , ltinisrInterfaceType
    , ltinisrNetworkInterfaceId
    , ltinisrSubnetId
    , ltinisrIPv6AddressCount
    , ltinisrPrivateIPAddress
    , ltinisrSecondaryPrivateIPAddressCount
    , ltinisrDescription
    , ltinisrDeviceIndex
    , ltinisrIPv6Addresses

    -- * LaunchTemplateLicenseConfiguration
    , LaunchTemplateLicenseConfiguration
    , launchTemplateLicenseConfiguration
    , ltlcLicenseConfigurationARN

    -- * LaunchTemplateLicenseConfigurationRequest
    , LaunchTemplateLicenseConfigurationRequest
    , launchTemplateLicenseConfigurationRequest
    , ltlcrLicenseConfigurationARN

    -- * LaunchTemplateOverrides
    , LaunchTemplateOverrides
    , launchTemplateOverrides
    , ltoPriority
    , ltoSpotPrice
    , ltoWeightedCapacity
    , ltoSubnetId
    , ltoInstanceType
    , ltoAvailabilityZone

    -- * LaunchTemplatePlacement
    , LaunchTemplatePlacement
    , launchTemplatePlacement
    , ltpAffinity
    , ltpHostId
    , ltpPartitionNumber
    , ltpSpreadDomain
    , ltpAvailabilityZone
    , ltpTenancy
    , ltpGroupName
    , ltpHostResourceGroupARN

    -- * LaunchTemplatePlacementRequest
    , LaunchTemplatePlacementRequest
    , launchTemplatePlacementRequest
    , ltprAffinity
    , ltprHostId
    , ltprPartitionNumber
    , ltprSpreadDomain
    , ltprAvailabilityZone
    , ltprTenancy
    , ltprGroupName
    , ltprHostResourceGroupARN

    -- * LaunchTemplateSpecification
    , LaunchTemplateSpecification
    , launchTemplateSpecification
    , ltsLaunchTemplateName
    , ltsLaunchTemplateId
    , ltsVersion

    -- * LaunchTemplateSpotMarketOptions
    , LaunchTemplateSpotMarketOptions
    , launchTemplateSpotMarketOptions
    , ltsmoBlockDurationMinutes
    , ltsmoInstanceInterruptionBehavior
    , ltsmoValidUntil
    , ltsmoSpotInstanceType
    , ltsmoMaxPrice

    -- * LaunchTemplateSpotMarketOptionsRequest
    , LaunchTemplateSpotMarketOptionsRequest
    , launchTemplateSpotMarketOptionsRequest
    , ltsmorBlockDurationMinutes
    , ltsmorInstanceInterruptionBehavior
    , ltsmorValidUntil
    , ltsmorSpotInstanceType
    , ltsmorMaxPrice

    -- * LaunchTemplateTagSpecification
    , LaunchTemplateTagSpecification
    , launchTemplateTagSpecification
    , lttsResourceType
    , lttsTags

    -- * LaunchTemplateTagSpecificationRequest
    , LaunchTemplateTagSpecificationRequest
    , launchTemplateTagSpecificationRequest
    , lttsrResourceType
    , lttsrTags

    -- * LaunchTemplateVersion
    , LaunchTemplateVersion
    , launchTemplateVersion
    , ltvLaunchTemplateName
    , ltvLaunchTemplateId
    , ltvCreatedBy
    , ltvDefaultVersion
    , ltvVersionNumber
    , ltvVersionDescription
    , ltvLaunchTemplateData
    , ltvCreateTime

    -- * LaunchTemplatesMonitoring
    , LaunchTemplatesMonitoring
    , launchTemplatesMonitoring
    , ltmEnabled

    -- * LaunchTemplatesMonitoringRequest
    , LaunchTemplatesMonitoringRequest
    , launchTemplatesMonitoringRequest
    , ltmrEnabled

    -- * LicenseConfiguration
    , LicenseConfiguration
    , licenseConfiguration
    , lcLicenseConfigurationARN

    -- * LicenseConfigurationRequest
    , LicenseConfigurationRequest
    , licenseConfigurationRequest
    , lcrLicenseConfigurationARN

    -- * LoadBalancersConfig
    , LoadBalancersConfig
    , loadBalancersConfig
    , lbcClassicLoadBalancersConfig
    , lbcTargetGroupsConfig

    -- * LoadPermission
    , LoadPermission
    , loadPermission
    , lpGroup
    , lpUserId

    -- * LoadPermissionModifications
    , LoadPermissionModifications
    , loadPermissionModifications
    , lpmRemove
    , lpmAdd

    -- * LoadPermissionRequest
    , LoadPermissionRequest
    , loadPermissionRequest
    , lprGroup
    , lprUserId

    -- * LocalGateway
    , LocalGateway
    , localGateway
    , lgState
    , lgLocalGatewayId
    , lgOutpostARN
    , lgOwnerId
    , lgTags

    -- * LocalGatewayRoute
    , LocalGatewayRoute
    , localGatewayRoute
    , lgrState
    , lgrLocalGatewayRouteTableId
    , lgrType
    , lgrLocalGatewayVirtualInterfaceGroupId
    , lgrDestinationCidrBlock

    -- * LocalGatewayRouteTable
    , LocalGatewayRouteTable
    , localGatewayRouteTable
    , lgrtState
    , lgrtLocalGatewayId
    , lgrtOutpostARN
    , lgrtLocalGatewayRouteTableId
    , lgrtTags

    -- * LocalGatewayRouteTableVPCAssociation
    , LocalGatewayRouteTableVPCAssociation
    , localGatewayRouteTableVPCAssociation
    , lgrtvaState
    , lgrtvaVPCId
    , lgrtvaLocalGatewayId
    , lgrtvaLocalGatewayRouteTableVPCAssociationId
    , lgrtvaLocalGatewayRouteTableId
    , lgrtvaTags

    -- * LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    , LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    , localGatewayRouteTableVirtualInterfaceGroupAssociation
    , lgrtvigaState
    , lgrtvigaLocalGatewayId
    , lgrtvigaLocalGatewayRouteTableId
    , lgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationId
    , lgrtvigaLocalGatewayVirtualInterfaceGroupId
    , lgrtvigaTags

    -- * LocalGatewayVirtualInterface
    , LocalGatewayVirtualInterface
    , localGatewayVirtualInterface
    , lgviLocalGatewayVirtualInterfaceId
    , lgviLocalBGPASN
    , lgviVLAN
    , lgviLocalGatewayId
    , lgviLocalAddress
    , lgviPeerBGPASN
    , lgviPeerAddress
    , lgviTags

    -- * LocalGatewayVirtualInterfaceGroup
    , LocalGatewayVirtualInterfaceGroup
    , localGatewayVirtualInterfaceGroup
    , lgvigLocalGatewayId
    , lgvigLocalGatewayVirtualInterfaceIds
    , lgvigLocalGatewayVirtualInterfaceGroupId
    , lgvigTags

    -- * MemoryInfo
    , MemoryInfo
    , memoryInfo
    , miSizeInMiB

    -- * ModifyTransitGatewayVPCAttachmentRequestOptions
    , ModifyTransitGatewayVPCAttachmentRequestOptions
    , modifyTransitGatewayVPCAttachmentRequestOptions
    , mtgvaroIPv6Support
    , mtgvaroDNSSupport

    -- * ModifyVPNTunnelOptionsSpecification
    , ModifyVPNTunnelOptionsSpecification
    , modifyVPNTunnelOptionsSpecification
    , mvtosReplayWindowSize
    , mvtosRekeyFuzzPercentage
    , mvtosPhase1LifetimeSeconds
    , mvtosIKEVersions
    , mvtosPhase2IntegrityAlgorithms
    , mvtosPhase2LifetimeSeconds
    , mvtosPhase1EncryptionAlgorithms
    , mvtosPhase1DHGroupNumbers
    , mvtosPhase1IntegrityAlgorithms
    , mvtosRekeyMarginTimeSeconds
    , mvtosDPDTimeoutSeconds
    , mvtosTunnelInsideCidr
    , mvtosPhase2EncryptionAlgorithms
    , mvtosPhase2DHGroupNumbers
    , mvtosPreSharedKey

    -- * Monitoring
    , Monitoring
    , monitoring
    , mState

    -- * MovingAddressStatus
    , MovingAddressStatus
    , movingAddressStatus
    , masMoveStatus
    , masPublicIP

    -- * NatGateway
    , NatGateway
    , natGateway
    , ngState
    , ngFailureCode
    , ngVPCId
    , ngFailureMessage
    , ngNatGatewayId
    , ngSubnetId
    , ngDeleteTime
    , ngProvisionedBandwidth
    , ngNatGatewayAddresses
    , ngCreateTime
    , ngTags

    -- * NatGatewayAddress
    , NatGatewayAddress
    , natGatewayAddress
    , ngaPrivateIP
    , ngaAllocationId
    , ngaNetworkInterfaceId
    , ngaPublicIP

    -- * NetworkACL
    , NetworkACL
    , networkACL
    , naEntries
    , naNetworkACLId
    , naVPCId
    , naOwnerId
    , naAssociations
    , naTags
    , naIsDefault

    -- * NetworkACLAssociation
    , NetworkACLAssociation
    , networkACLAssociation
    , naaNetworkACLId
    , naaSubnetId
    , naaNetworkACLAssociationId

    -- * NetworkACLEntry
    , NetworkACLEntry
    , networkACLEntry
    , naeIPv6CidrBlock
    , naeICMPTypeCode
    , naeRuleNumber
    , naeRuleAction
    , naeProtocol
    , naePortRange
    , naeCidrBlock
    , naeEgress

    -- * NetworkInfo
    , NetworkInfo
    , networkInfo
    , niIPv6Supported
    , niEnaSupport
    , niMaximumNetworkInterfaces
    , niIPv6AddressesPerInterface
    , niNetworkPerformance
    , niIPv4AddressesPerInterface

    -- * NetworkInterface
    , NetworkInterface
    , networkInterface
    , niGroups
    , niStatus
    , niPrivateIPAddresses
    , niSourceDestCheck
    , niInterfaceType
    , niVPCId
    , niTagSet
    , niRequesterManaged
    , niOutpostARN
    , niNetworkInterfaceId
    , niSubnetId
    , niMACAddress
    , niAttachment
    , niOwnerId
    , niAvailabilityZone
    , niPrivateIPAddress
    , niPrivateDNSName
    , niRequesterId
    , niDescription
    , niAssociation
    , niIPv6Addresses

    -- * NetworkInterfaceAssociation
    , NetworkInterfaceAssociation
    , networkInterfaceAssociation
    , niaAssociationId
    , niaPublicDNSName
    , niaAllocationId
    , niaIPOwnerId
    , niaPublicIP

    -- * NetworkInterfaceAttachment
    , NetworkInterfaceAttachment
    , networkInterfaceAttachment
    , niaInstanceId
    , niaStatus
    , niaDeleteOnTermination
    , niaAttachmentId
    , niaInstanceOwnerId
    , niaAttachTime
    , niaDeviceIndex

    -- * NetworkInterfaceAttachmentChanges
    , NetworkInterfaceAttachmentChanges
    , networkInterfaceAttachmentChanges
    , niacDeleteOnTermination
    , niacAttachmentId

    -- * NetworkInterfaceIPv6Address
    , NetworkInterfaceIPv6Address
    , networkInterfaceIPv6Address
    , niiaIPv6Address

    -- * NetworkInterfacePermission
    , NetworkInterfacePermission
    , networkInterfacePermission
    , nipPermissionState
    , nipNetworkInterfacePermissionId
    , nipNetworkInterfaceId
    , nipAWSAccountId
    , nipAWSService
    , nipPermission

    -- * NetworkInterfacePermissionState
    , NetworkInterfacePermissionState
    , networkInterfacePermissionState
    , nipsState
    , nipsStatusMessage

    -- * NetworkInterfacePrivateIPAddress
    , NetworkInterfacePrivateIPAddress
    , networkInterfacePrivateIPAddress
    , nipiaPrimary
    , nipiaPrivateIPAddress
    , nipiaPrivateDNSName
    , nipiaAssociation

    -- * NewDHCPConfiguration
    , NewDHCPConfiguration
    , newDHCPConfiguration
    , ndcValues
    , ndcKey

    -- * OnDemandOptions
    , OnDemandOptions
    , onDemandOptions
    , odoCapacityReservationOptions
    , odoSingleAvailabilityZone
    , odoMaxTotalPrice
    , odoMinTargetCapacity
    , odoSingleInstanceType
    , odoAllocationStrategy

    -- * OnDemandOptionsRequest
    , OnDemandOptionsRequest
    , onDemandOptionsRequest
    , odorCapacityReservationOptions
    , odorSingleAvailabilityZone
    , odorMaxTotalPrice
    , odorMinTargetCapacity
    , odorSingleInstanceType
    , odorAllocationStrategy

    -- * PciId
    , PciId
    , pciId
    , piSubsystemId
    , piDeviceId
    , piSubsystemVendorId
    , piVendorId

    -- * PeeringAttachmentStatus
    , PeeringAttachmentStatus
    , peeringAttachmentStatus
    , pasCode
    , pasMessage

    -- * PeeringConnectionOptions
    , PeeringConnectionOptions
    , peeringConnectionOptions
    , pcoAllowEgressFromLocalVPCToRemoteClassicLink
    , pcoAllowEgressFromLocalClassicLinkToRemoteVPC
    , pcoAllowDNSResolutionFromRemoteVPC

    -- * PeeringConnectionOptionsRequest
    , PeeringConnectionOptionsRequest
    , peeringConnectionOptionsRequest
    , pcorAllowEgressFromLocalVPCToRemoteClassicLink
    , pcorAllowEgressFromLocalClassicLinkToRemoteVPC
    , pcorAllowDNSResolutionFromRemoteVPC

    -- * PeeringTgwInfo
    , PeeringTgwInfo
    , peeringTgwInfo
    , ptiOwnerId
    , ptiTransitGatewayId
    , ptiRegion

    -- * Phase1DHGroupNumbersListValue
    , Phase1DHGroupNumbersListValue
    , phase1DHGroupNumbersListValue
    , pdhgnlvValue

    -- * Phase1DHGroupNumbersRequestListValue
    , Phase1DHGroupNumbersRequestListValue
    , phase1DHGroupNumbersRequestListValue
    , pdhgnrlvValue

    -- * Phase1EncryptionAlgorithmsListValue
    , Phase1EncryptionAlgorithmsListValue
    , phase1EncryptionAlgorithmsListValue
    , pealveValue

    -- * Phase1EncryptionAlgorithmsRequestListValue
    , Phase1EncryptionAlgorithmsRequestListValue
    , phase1EncryptionAlgorithmsRequestListValue
    , pearlvValue

    -- * Phase1IntegrityAlgorithmsListValue
    , Phase1IntegrityAlgorithmsListValue
    , phase1IntegrityAlgorithmsListValue
    , pialvValue

    -- * Phase1IntegrityAlgorithmsRequestListValue
    , Phase1IntegrityAlgorithmsRequestListValue
    , phase1IntegrityAlgorithmsRequestListValue
    , piarlviValue

    -- * Phase2DHGroupNumbersListValue
    , Phase2DHGroupNumbersListValue
    , phase2DHGroupNumbersListValue
    , pValue

    -- * Phase2DHGroupNumbersRequestListValue
    , Phase2DHGroupNumbersRequestListValue
    , phase2DHGroupNumbersRequestListValue
    , pdhgnrlvdValue

    -- * Phase2EncryptionAlgorithmsListValue
    , Phase2EncryptionAlgorithmsListValue
    , phase2EncryptionAlgorithmsListValue
    , pealvValue

    -- * Phase2EncryptionAlgorithmsRequestListValue
    , Phase2EncryptionAlgorithmsRequestListValue
    , phase2EncryptionAlgorithmsRequestListValue
    , pearlveValue

    -- * Phase2IntegrityAlgorithmsListValue
    , Phase2IntegrityAlgorithmsListValue
    , phase2IntegrityAlgorithmsListValue
    , phaValue

    -- * Phase2IntegrityAlgorithmsRequestListValue
    , Phase2IntegrityAlgorithmsRequestListValue
    , phase2IntegrityAlgorithmsRequestListValue
    , piarlvValue

    -- * Placement
    , Placement
    , placement
    , plaAffinity
    , plaHostId
    , plaPartitionNumber
    , plaSpreadDomain
    , plaAvailabilityZone
    , plaTenancy
    , plaGroupName
    , plaHostResourceGroupARN

    -- * PlacementGroup
    , PlacementGroup
    , placementGroup
    , pgState
    , pgStrategy
    , pgGroupId
    , pgGroupName
    , pgPartitionCount
    , pgTags

    -- * PlacementGroupInfo
    , PlacementGroupInfo
    , placementGroupInfo
    , pgiSupportedStrategies

    -- * PlacementResponse
    , PlacementResponse
    , placementResponse
    , pGroupName

    -- * PoolCidrBlock
    , PoolCidrBlock
    , poolCidrBlock
    , pcbCidr

    -- * PortRange
    , PortRange
    , portRange
    , prTo
    , prFrom

    -- * PrefixList
    , PrefixList
    , prefixList
    , plCidrs
    , plPrefixListId
    , plPrefixListName

    -- * PrefixListId
    , PrefixListId
    , prefixListId
    , pliPrefixListId
    , pliDescription

    -- * PriceSchedule
    , PriceSchedule
    , priceSchedule
    , psCurrencyCode
    , psTerm
    , psActive
    , psPrice

    -- * PriceScheduleSpecification
    , PriceScheduleSpecification
    , priceScheduleSpecification
    , pssCurrencyCode
    , pssTerm
    , pssPrice

    -- * PricingDetail
    , PricingDetail
    , pricingDetail
    , pdCount
    , pdPrice

    -- * PrincipalIdFormat
    , PrincipalIdFormat
    , principalIdFormat
    , pifARN
    , pifStatuses

    -- * PrivateDNSNameConfiguration
    , PrivateDNSNameConfiguration
    , privateDNSNameConfiguration
    , pdncState
    , pdncValue
    , pdncName
    , pdncType

    -- * PrivateIPAddressSpecification
    , PrivateIPAddressSpecification
    , privateIPAddressSpecification
    , piasPrimary
    , piasPrivateIPAddress

    -- * ProcessorInfo
    , ProcessorInfo
    , processorInfo
    , piSupportedArchitectures
    , piSustainedClockSpeedInGhz

    -- * ProductCode
    , ProductCode
    , productCode
    , pcProductCodeType
    , pcProductCodeId

    -- * PropagatingVGW
    , PropagatingVGW
    , propagatingVGW
    , pvGatewayId

    -- * ProvisionedBandwidth
    , ProvisionedBandwidth
    , provisionedBandwidth
    , pbStatus
    , pbRequested
    , pbProvisioned
    , pbRequestTime
    , pbProvisionTime

    -- * PublicIPv4Pool
    , PublicIPv4Pool
    , publicIPv4Pool
    , pipTotalAddressCount
    , pipTotalAvailableAddressCount
    , pipPoolAddressRanges
    , pipPoolId
    , pipDescription
    , pipTags

    -- * PublicIPv4PoolRange
    , PublicIPv4PoolRange
    , publicIPv4PoolRange
    , piprAvailableAddressCount
    , piprLastAddress
    , piprFirstAddress
    , piprAddressCount

    -- * Purchase
    , Purchase
    , purchase
    , pInstanceFamily
    , pCurrencyCode
    , pHostReservationId
    , pHourlyPrice
    , pUpfrontPrice
    , pHostIdSet
    , pDuration
    , pPaymentOption

    -- * PurchaseRequest
    , PurchaseRequest
    , purchaseRequest
    , prInstanceCount
    , prPurchaseToken

    -- * RecurringCharge
    , RecurringCharge
    , recurringCharge
    , rcAmount
    , rcFrequency

    -- * RegionInfo
    , RegionInfo
    , regionInfo
    , riRegionName
    , riOptInStatus
    , riEndpoint

    -- * RegisterInstanceTagAttributeRequest
    , RegisterInstanceTagAttributeRequest
    , registerInstanceTagAttributeRequest
    , ritarIncludeAllTagsOfInstance
    , ritarInstanceTagKeys

    -- * RequestLaunchTemplateData
    , RequestLaunchTemplateData
    , requestLaunchTemplateData
    , rltdSecurityGroupIds
    , rltdSecurityGroups
    , rltdElasticInferenceAccelerators
    , rltdInstanceMarketOptions
    , rltdLicenseSpecifications
    , rltdDisableAPITermination
    , rltdKeyName
    , rltdNetworkInterfaces
    , rltdCPUOptions
    , rltdRamDiskId
    , rltdKernelId
    , rltdElasticGpuSpecifications
    , rltdInstanceType
    , rltdCapacityReservationSpecification
    , rltdEBSOptimized
    , rltdUserData
    , rltdMonitoring
    , rltdTagSpecifications
    , rltdHibernationOptions
    , rltdIAMInstanceProfile
    , rltdImageId
    , rltdInstanceInitiatedShutdownBehavior
    , rltdMetadataOptions
    , rltdCreditSpecification
    , rltdBlockDeviceMappings
    , rltdPlacement

    -- * RequestSpotLaunchSpecification
    , RequestSpotLaunchSpecification
    , requestSpotLaunchSpecification
    , rslsSecurityGroupIds
    , rslsSecurityGroups
    , rslsKeyName
    , rslsNetworkInterfaces
    , rslsRAMDiskId
    , rslsSubnetId
    , rslsKernelId
    , rslsInstanceType
    , rslsEBSOptimized
    , rslsUserData
    , rslsMonitoring
    , rslsIAMInstanceProfile
    , rslsImageId
    , rslsAddressingType
    , rslsBlockDeviceMappings
    , rslsPlacement

    -- * Reservation
    , Reservation
    , reservation
    , rGroups
    , rInstances
    , rRequesterId
    , rReservationId
    , rOwnerId

    -- * ReservationValue
    , ReservationValue
    , reservationValue
    , rvHourlyPrice
    , rvRemainingTotalValue
    , rvRemainingUpfrontValue

    -- * ReservedInstanceLimitPrice
    , ReservedInstanceLimitPrice
    , reservedInstanceLimitPrice
    , rilpAmount
    , rilpCurrencyCode

    -- * ReservedInstanceReservationValue
    , ReservedInstanceReservationValue
    , reservedInstanceReservationValue
    , rirvReservationValue
    , rirvReservedInstanceId

    -- * ReservedInstances
    , ReservedInstances
    , reservedInstances
    , riState
    , riCurrencyCode
    , riInstanceCount
    , riProductDescription
    , riStart
    , riInstanceType
    , riEnd
    , riAvailabilityZone
    , riScope
    , riRecurringCharges
    , riOfferingType
    , riUsagePrice
    , riFixedPrice
    , riReservedInstancesId
    , riInstanceTenancy
    , riOfferingClass
    , riDuration
    , riTags

    -- * ReservedInstancesConfiguration
    , ReservedInstancesConfiguration
    , reservedInstancesConfiguration
    , ricPlatform
    , ricInstanceCount
    , ricInstanceType
    , ricAvailabilityZone
    , ricScope

    -- * ReservedInstancesId
    , ReservedInstancesId
    , reservedInstancesId
    , riiReservedInstancesId

    -- * ReservedInstancesListing
    , ReservedInstancesListing
    , reservedInstancesListing
    , rilStatus
    , rilClientToken
    , rilUpdateDate
    , rilCreateDate
    , rilPriceSchedules
    , rilStatusMessage
    , rilReservedInstancesId
    , rilTags
    , rilInstanceCounts
    , rilReservedInstancesListingId

    -- * ReservedInstancesModification
    , ReservedInstancesModification
    , reservedInstancesModification
    , rimModificationResults
    , rimStatus
    , rimClientToken
    , rimUpdateDate
    , rimCreateDate
    , rimEffectiveDate
    , rimStatusMessage
    , rimReservedInstancesModificationId
    , rimReservedInstancesIds

    -- * ReservedInstancesModificationResult
    , ReservedInstancesModificationResult
    , reservedInstancesModificationResult
    , rimrReservedInstancesId
    , rimrTargetConfiguration

    -- * ReservedInstancesOffering
    , ReservedInstancesOffering
    , reservedInstancesOffering
    , rioMarketplace
    , rioCurrencyCode
    , rioProductDescription
    , rioInstanceType
    , rioAvailabilityZone
    , rioPricingDetails
    , rioScope
    , rioRecurringCharges
    , rioOfferingType
    , rioUsagePrice
    , rioFixedPrice
    , rioInstanceTenancy
    , rioReservedInstancesOfferingId
    , rioOfferingClass
    , rioDuration

    -- * ResponseError
    , ResponseError
    , responseError
    , reCode
    , reMessage

    -- * ResponseLaunchTemplateData
    , ResponseLaunchTemplateData
    , responseLaunchTemplateData
    , rSecurityGroupIds
    , rSecurityGroups
    , rElasticInferenceAccelerators
    , rInstanceMarketOptions
    , rLicenseSpecifications
    , rDisableAPITermination
    , rKeyName
    , rNetworkInterfaces
    , rCPUOptions
    , rRamDiskId
    , rKernelId
    , rElasticGpuSpecifications
    , rInstanceType
    , rCapacityReservationSpecification
    , rEBSOptimized
    , rUserData
    , rMonitoring
    , rTagSpecifications
    , rHibernationOptions
    , rIAMInstanceProfile
    , rImageId
    , rInstanceInitiatedShutdownBehavior
    , rMetadataOptions
    , rCreditSpecification
    , rBlockDeviceMappings
    , rPlacement

    -- * Route
    , Route
    , route
    , rVPCPeeringConnectionId
    , rInstanceId
    , rOrigin
    , rState
    , rEgressOnlyInternetGatewayId
    , rDestinationIPv6CidrBlock
    , rLocalGatewayId
    , rNatGatewayId
    , rNetworkInterfaceId
    , rTransitGatewayId
    , rGatewayId
    , rInstanceOwnerId
    , rDestinationPrefixListId
    , rDestinationCidrBlock

    -- * RouteTable
    , RouteTable
    , routeTable
    , rtRouteTableId
    , rtRoutes
    , rtVPCId
    , rtPropagatingVGWs
    , rtOwnerId
    , rtAssociations
    , rtTags

    -- * RouteTableAssociation
    , RouteTableAssociation
    , routeTableAssociation
    , rtaRouteTableId
    , rtaRouteTableAssociationId
    , rtaMain
    , rtaSubnetId
    , rtaGatewayId
    , rtaAssociationState

    -- * RouteTableAssociationState
    , RouteTableAssociationState
    , routeTableAssociationState
    , rtasState
    , rtasStatusMessage

    -- * RunInstancesMonitoringEnabled
    , RunInstancesMonitoringEnabled
    , runInstancesMonitoringEnabled
    , rimeEnabled

    -- * S3Storage
    , S3Storage
    , s3Storage
    , ssPrefix
    , ssUploadPolicy
    , ssBucket
    , ssUploadPolicySignature
    , ssAWSAccessKeyId

    -- * ScheduledInstance
    , ScheduledInstance
    , scheduledInstance
    , siPreviousSlotEndTime
    , siPlatform
    , siTermStartDate
    , siInstanceCount
    , siScheduledInstanceId
    , siHourlyPrice
    , siCreateDate
    , siSlotDurationInHours
    , siTotalScheduledInstanceHours
    , siInstanceType
    , siRecurrence
    , siAvailabilityZone
    , siTermEndDate
    , siNextSlotStartTime
    , siNetworkPlatform

    -- * ScheduledInstanceAvailability
    , ScheduledInstanceAvailability
    , scheduledInstanceAvailability
    , siaMaxTermDurationInDays
    , siaPlatform
    , siaPurchaseToken
    , siaHourlyPrice
    , siaAvailableInstanceCount
    , siaSlotDurationInHours
    , siaTotalScheduledInstanceHours
    , siaInstanceType
    , siaRecurrence
    , siaAvailabilityZone
    , siaMinTermDurationInDays
    , siaFirstSlotStartTime
    , siaNetworkPlatform

    -- * ScheduledInstanceRecurrence
    , ScheduledInstanceRecurrence
    , scheduledInstanceRecurrence
    , sirFrequency
    , sirOccurrenceRelativeToEnd
    , sirOccurrenceUnit
    , sirInterval
    , sirOccurrenceDaySet

    -- * ScheduledInstanceRecurrenceRequest
    , ScheduledInstanceRecurrenceRequest
    , scheduledInstanceRecurrenceRequest
    , sirrFrequency
    , sirrOccurrenceRelativeToEnd
    , sirrOccurrenceDays
    , sirrOccurrenceUnit
    , sirrInterval

    -- * ScheduledInstancesBlockDeviceMapping
    , ScheduledInstancesBlockDeviceMapping
    , scheduledInstancesBlockDeviceMapping
    , sibdmVirtualName
    , sibdmNoDevice
    , sibdmEBS
    , sibdmDeviceName

    -- * ScheduledInstancesEBS
    , ScheduledInstancesEBS
    , scheduledInstancesEBS
    , sieDeleteOnTermination
    , sieVolumeSize
    , sieIOPS
    , sieEncrypted
    , sieVolumeType
    , sieSnapshotId

    -- * ScheduledInstancesIAMInstanceProfile
    , ScheduledInstancesIAMInstanceProfile
    , scheduledInstancesIAMInstanceProfile
    , siiapARN
    , siiapName

    -- * ScheduledInstancesIPv6Address
    , ScheduledInstancesIPv6Address
    , scheduledInstancesIPv6Address
    , siiaIPv6Address

    -- * ScheduledInstancesLaunchSpecification
    , ScheduledInstancesLaunchSpecification
    , scheduledInstancesLaunchSpecification
    , silsSecurityGroupIds
    , silsKeyName
    , silsNetworkInterfaces
    , silsRAMDiskId
    , silsSubnetId
    , silsKernelId
    , silsInstanceType
    , silsEBSOptimized
    , silsUserData
    , silsMonitoring
    , silsIAMInstanceProfile
    , silsBlockDeviceMappings
    , silsPlacement
    , silsImageId

    -- * ScheduledInstancesMonitoring
    , ScheduledInstancesMonitoring
    , scheduledInstancesMonitoring
    , simEnabled

    -- * ScheduledInstancesNetworkInterface
    , ScheduledInstancesNetworkInterface
    , scheduledInstancesNetworkInterface
    , siniGroups
    , siniDeleteOnTermination
    , siniAssociatePublicIPAddress
    , siniPrivateIPAddressConfigs
    , siniNetworkInterfaceId
    , siniSubnetId
    , siniIPv6AddressCount
    , siniPrivateIPAddress
    , siniSecondaryPrivateIPAddressCount
    , siniDescription
    , siniDeviceIndex
    , siniIPv6Addresses

    -- * ScheduledInstancesPlacement
    , ScheduledInstancesPlacement
    , scheduledInstancesPlacement
    , sipAvailabilityZone
    , sipGroupName

    -- * ScheduledInstancesPrivateIPAddressConfig
    , ScheduledInstancesPrivateIPAddressConfig
    , scheduledInstancesPrivateIPAddressConfig
    , sipiacPrimary
    , sipiacPrivateIPAddress

    -- * SecurityGroup
    , SecurityGroup
    , securityGroup
    , sgVPCId
    , sgIPPermissions
    , sgIPPermissionsEgress
    , sgTags
    , sgOwnerId
    , sgGroupId
    , sgGroupName
    , sgDescription

    -- * SecurityGroupIdentifier
    , SecurityGroupIdentifier
    , securityGroupIdentifier
    , sgiGroupId
    , sgiGroupName

    -- * SecurityGroupReference
    , SecurityGroupReference
    , securityGroupReference
    , sgrVPCPeeringConnectionId
    , sgrReferencingVPCId
    , sgrGroupId

    -- * ServiceConfiguration
    , ServiceConfiguration
    , serviceConfiguration
    , scNetworkLoadBalancerARNs
    , scBaseEndpointDNSNames
    , scAvailabilityZones
    , scManagesVPCEndpoints
    , scServiceName
    , scServiceState
    , scServiceType
    , scAcceptanceRequired
    , scServiceId
    , scPrivateDNSName
    , scPrivateDNSNameConfiguration
    , scTags

    -- * ServiceDetail
    , ServiceDetail
    , serviceDetail
    , sdPrivateDNSNameVerificationState
    , sdVPCEndpointPolicySupported
    , sdBaseEndpointDNSNames
    , sdOwner
    , sdAvailabilityZones
    , sdManagesVPCEndpoints
    , sdServiceName
    , sdServiceType
    , sdAcceptanceRequired
    , sdServiceId
    , sdPrivateDNSName
    , sdTags

    -- * ServiceTypeDetail
    , ServiceTypeDetail
    , serviceTypeDetail
    , stdServiceType

    -- * SlotDateTimeRangeRequest
    , SlotDateTimeRangeRequest
    , slotDateTimeRangeRequest
    , sdtrrEarliestTime
    , sdtrrLatestTime

    -- * SlotStartTimeRangeRequest
    , SlotStartTimeRangeRequest
    , slotStartTimeRangeRequest
    , sstrrLatestTime
    , sstrrEarliestTime

    -- * Snapshot
    , Snapshot
    , snapshot
    , sStateMessage
    , sOwnerAlias
    , sDataEncryptionKeyId
    , sKMSKeyId
    , sTags
    , sSnapshotId
    , sOwnerId
    , sVolumeId
    , sVolumeSize
    , sDescription
    , sStartTime
    , sProgress
    , sState
    , sEncrypted

    -- * SnapshotDetail
    , SnapshotDetail
    , snapshotDetail
    , sdStatus
    , sdProgress
    , sdFormat
    , sdURL
    , sdDeviceName
    , sdStatusMessage
    , sdUserBucket
    , sdDiskImageSize
    , sdDescription
    , sdSnapshotId

    -- * SnapshotDiskContainer
    , SnapshotDiskContainer
    , snapshotDiskContainer
    , sdcFormat
    , sdcURL
    , sdcUserBucket
    , sdcDescription

    -- * SnapshotInfo
    , SnapshotInfo
    , snapshotInfo
    , siState
    , siProgress
    , siStartTime
    , siVolumeSize
    , siEncrypted
    , siOwnerId
    , siVolumeId
    , siDescription
    , siTags
    , siSnapshotId

    -- * SnapshotTaskDetail
    , SnapshotTaskDetail
    , snapshotTaskDetail
    , stdStatus
    , stdProgress
    , stdFormat
    , stdURL
    , stdEncrypted
    , stdKMSKeyId
    , stdStatusMessage
    , stdUserBucket
    , stdDiskImageSize
    , stdDescription
    , stdSnapshotId

    -- * SpotDatafeedSubscription
    , SpotDatafeedSubscription
    , spotDatafeedSubscription
    , sdsState
    , sdsPrefix
    , sdsBucket
    , sdsOwnerId
    , sdsFault

    -- * SpotFleetLaunchSpecification
    , SpotFleetLaunchSpecification
    , spotFleetLaunchSpecification
    , sflsSecurityGroups
    , sflsSpotPrice
    , sflsWeightedCapacity
    , sflsKeyName
    , sflsNetworkInterfaces
    , sflsRAMDiskId
    , sflsSubnetId
    , sflsKernelId
    , sflsInstanceType
    , sflsEBSOptimized
    , sflsUserData
    , sflsMonitoring
    , sflsTagSpecifications
    , sflsIAMInstanceProfile
    , sflsImageId
    , sflsAddressingType
    , sflsBlockDeviceMappings
    , sflsPlacement

    -- * SpotFleetMonitoring
    , SpotFleetMonitoring
    , spotFleetMonitoring
    , sfmEnabled

    -- * SpotFleetRequestConfig
    , SpotFleetRequestConfig
    , spotFleetRequestConfig
    , sfrcSpotFleetRequestConfig
    , sfrcSpotFleetRequestId
    , sfrcSpotFleetRequestState
    , sfrcCreateTime
    , sfrcTags
    , sfrcActivityStatus

    -- * SpotFleetRequestConfigData
    , SpotFleetRequestConfigData
    , spotFleetRequestConfigData
    , sfrcdClientToken
    , sfrcdInstanceInterruptionBehavior
    , sfrcdOnDemandMaxTotalPrice
    , sfrcdSpotPrice
    , sfrcdLoadBalancersConfig
    , sfrcdExcessCapacityTerminationPolicy
    , sfrcdOnDemandTargetCapacity
    , sfrcdLaunchTemplateConfigs
    , sfrcdTagSpecifications
    , sfrcdValidUntil
    , sfrcdTerminateInstancesWithExpiration
    , sfrcdOnDemandAllocationStrategy
    , sfrcdInstancePoolsToUseCount
    , sfrcdFulfilledCapacity
    , sfrcdType
    , sfrcdValidFrom
    , sfrcdReplaceUnhealthyInstances
    , sfrcdLaunchSpecifications
    , sfrcdOnDemandFulfilledCapacity
    , sfrcdSpotMaxTotalPrice
    , sfrcdAllocationStrategy
    , sfrcdIAMFleetRole
    , sfrcdTargetCapacity

    -- * SpotFleetTagSpecification
    , SpotFleetTagSpecification
    , spotFleetTagSpecification
    , sftsResourceType
    , sftsTags

    -- * SpotInstanceRequest
    , SpotInstanceRequest
    , spotInstanceRequest
    , sirInstanceId
    , sirStatus
    , sirState
    , sirActualBlockHourlyPrice
    , sirBlockDurationMinutes
    , sirInstanceInterruptionBehavior
    , sirProductDescription
    , sirSpotPrice
    , sirLaunchSpecification
    , sirAvailabilityZoneGroup
    , sirLaunchedAvailabilityZone
    , sirValidUntil
    , sirLaunchGroup
    , sirFault
    , sirSpotInstanceRequestId
    , sirType
    , sirValidFrom
    , sirCreateTime
    , sirTags

    -- * SpotInstanceStateFault
    , SpotInstanceStateFault
    , spotInstanceStateFault
    , sisfCode
    , sisfMessage

    -- * SpotInstanceStatus
    , SpotInstanceStatus
    , spotInstanceStatus
    , sisUpdateTime
    , sisCode
    , sisMessage

    -- * SpotMarketOptions
    , SpotMarketOptions
    , spotMarketOptions
    , smoBlockDurationMinutes
    , smoInstanceInterruptionBehavior
    , smoValidUntil
    , smoSpotInstanceType
    , smoMaxPrice

    -- * SpotOptions
    , SpotOptions
    , spotOptions
    , soInstanceInterruptionBehavior
    , soSingleAvailabilityZone
    , soMaxTotalPrice
    , soMinTargetCapacity
    , soInstancePoolsToUseCount
    , soSingleInstanceType
    , soAllocationStrategy

    -- * SpotOptionsRequest
    , SpotOptionsRequest
    , spotOptionsRequest
    , sorInstanceInterruptionBehavior
    , sorSingleAvailabilityZone
    , sorMaxTotalPrice
    , sorMinTargetCapacity
    , sorInstancePoolsToUseCount
    , sorSingleInstanceType
    , sorAllocationStrategy

    -- * SpotPlacement
    , SpotPlacement
    , spotPlacement
    , spAvailabilityZone
    , spTenancy
    , spGroupName

    -- * SpotPrice
    , SpotPrice
    , spotPrice
    , sProductDescription
    , sSpotPrice
    , sInstanceType
    , sAvailabilityZone
    , sTimestamp

    -- * StaleIPPermission
    , StaleIPPermission
    , staleIPPermission
    , sipFromPort
    , sipUserIdGroupPairs
    , sipPrefixListIds
    , sipIPProtocol
    , sipToPort
    , sipIPRanges

    -- * StaleSecurityGroup
    , StaleSecurityGroup
    , staleSecurityGroup
    , ssgVPCId
    , ssgGroupId
    , ssgGroupName
    , ssgStaleIPPermissionsEgress
    , ssgStaleIPPermissions
    , ssgDescription

    -- * StateReason
    , StateReason
    , stateReason
    , srCode
    , srMessage

    -- * Storage
    , Storage
    , storage
    , sS3

    -- * StorageLocation
    , StorageLocation
    , storageLocation
    , slBucket
    , slKey

    -- * Subnet
    , Subnet
    , subnet
    , subIPv6CidrBlockAssociationSet
    , subAvailabilityZoneId
    , subOutpostARN
    , subAssignIPv6AddressOnCreation
    , subSubnetARN
    , subOwnerId
    , subMapPublicIPOnLaunch
    , subDefaultForAz
    , subTags
    , subAvailabilityZone
    , subAvailableIPAddressCount
    , subCidrBlock
    , subState
    , subSubnetId
    , subVPCId

    -- * SubnetAssociation
    , SubnetAssociation
    , subnetAssociation
    , saState
    , saSubnetId

    -- * SubnetCidrBlockState
    , SubnetCidrBlockState
    , subnetCidrBlockState
    , scbsState
    , scbsStatusMessage

    -- * SubnetIPv6CidrBlockAssociation
    , SubnetIPv6CidrBlockAssociation
    , subnetIPv6CidrBlockAssociation
    , sicbaAssociationId
    , sicbaIPv6CidrBlock
    , sicbaIPv6CidrBlockState

    -- * SuccessfulInstanceCreditSpecificationItem
    , SuccessfulInstanceCreditSpecificationItem
    , successfulInstanceCreditSpecificationItem
    , sicsiInstanceId

    -- * SuccessfulQueuedPurchaseDeletion
    , SuccessfulQueuedPurchaseDeletion
    , successfulQueuedPurchaseDeletion
    , sqpdReservedInstancesId

    -- * Tag
    , Tag
    , tag
    , tagKey
    , tagValue

    -- * TagDescription
    , TagDescription
    , tagDescription
    , tdResourceId
    , tdResourceType
    , tdKey
    , tdValue

    -- * TagSpecification
    , TagSpecification
    , tagSpecification
    , tsResourceType
    , tsTags

    -- * TargetCapacitySpecification
    , TargetCapacitySpecification
    , targetCapacitySpecification
    , tcsOnDemandTargetCapacity
    , tcsDefaultTargetCapacityType
    , tcsTotalTargetCapacity
    , tcsSpotTargetCapacity

    -- * TargetCapacitySpecificationRequest
    , TargetCapacitySpecificationRequest
    , targetCapacitySpecificationRequest
    , tcsrOnDemandTargetCapacity
    , tcsrDefaultTargetCapacityType
    , tcsrSpotTargetCapacity
    , tcsrTotalTargetCapacity

    -- * TargetConfiguration
    , TargetConfiguration
    , targetConfiguration
    , tcInstanceCount
    , tcOfferingId

    -- * TargetConfigurationRequest
    , TargetConfigurationRequest
    , targetConfigurationRequest
    , tcrInstanceCount
    , tcrOfferingId

    -- * TargetGroup
    , TargetGroup
    , targetGroup
    , tgARN

    -- * TargetGroupsConfig
    , TargetGroupsConfig
    , targetGroupsConfig
    , tgcTargetGroups

    -- * TargetNetwork
    , TargetNetwork
    , targetNetwork
    , tnAssociationId
    , tnStatus
    , tnSecurityGroups
    , tnTargetNetworkId
    , tnVPCId
    , tnClientVPNEndpointId

    -- * TargetReservationValue
    , TargetReservationValue
    , targetReservationValue
    , trvReservationValue
    , trvTargetConfiguration

    -- * TerminateConnectionStatus
    , TerminateConnectionStatus
    , terminateConnectionStatus
    , tcsCurrentStatus
    , tcsConnectionId
    , tcsPreviousStatus

    -- * TrafficMirrorFilter
    , TrafficMirrorFilter
    , trafficMirrorFilter
    , tmfTrafficMirrorFilterId
    , tmfIngressFilterRules
    , tmfNetworkServices
    , tmfEgressFilterRules
    , tmfDescription
    , tmfTags

    -- * TrafficMirrorFilterRule
    , TrafficMirrorFilterRule
    , trafficMirrorFilterRule
    , tmfrRuleNumber
    , tmfrTrafficDirection
    , tmfrRuleAction
    , tmfrProtocol
    , tmfrTrafficMirrorFilterId
    , tmfrTrafficMirrorFilterRuleId
    , tmfrDestinationPortRange
    , tmfrSourceCidrBlock
    , tmfrSourcePortRange
    , tmfrDescription
    , tmfrDestinationCidrBlock

    -- * TrafficMirrorPortRange
    , TrafficMirrorPortRange
    , trafficMirrorPortRange
    , tmprFromPort
    , tmprToPort

    -- * TrafficMirrorPortRangeRequest
    , TrafficMirrorPortRangeRequest
    , trafficMirrorPortRangeRequest
    , tmprrFromPort
    , tmprrToPort

    -- * TrafficMirrorSession
    , TrafficMirrorSession
    , trafficMirrorSession
    , tmsTrafficMirrorTargetId
    , tmsNetworkInterfaceId
    , tmsTrafficMirrorFilterId
    , tmsPacketLength
    , tmsOwnerId
    , tmsTrafficMirrorSessionId
    , tmsVirtualNetworkId
    , tmsSessionNumber
    , tmsDescription
    , tmsTags

    -- * TrafficMirrorTarget
    , TrafficMirrorTarget
    , trafficMirrorTarget
    , tmtTrafficMirrorTargetId
    , tmtNetworkInterfaceId
    , tmtNetworkLoadBalancerARN
    , tmtOwnerId
    , tmtType
    , tmtDescription
    , tmtTags

    -- * TransitGateway
    , TransitGateway
    , transitGateway
    , tgCreationTime
    , tgState
    , tgOwnerId
    , tgTransitGatewayARN
    , tgTransitGatewayId
    , tgOptions
    , tgDescription
    , tgTags

    -- * TransitGatewayAssociation
    , TransitGatewayAssociation
    , transitGatewayAssociation
    , traState
    , traResourceId
    , traResourceType
    , traTransitGatewayRouteTableId
    , traTransitGatewayAttachmentId

    -- * TransitGatewayAttachment
    , TransitGatewayAttachment
    , transitGatewayAttachment
    , tgaCreationTime
    , tgaState
    , tgaResourceId
    , tgaResourceType
    , tgaTransitGatewayOwnerId
    , tgaTransitGatewayId
    , tgaTransitGatewayAttachmentId
    , tgaResourceOwnerId
    , tgaTags
    , tgaAssociation

    -- * TransitGatewayAttachmentAssociation
    , TransitGatewayAttachmentAssociation
    , transitGatewayAttachmentAssociation
    , tgaaState
    , tgaaTransitGatewayRouteTableId

    -- * TransitGatewayAttachmentPropagation
    , TransitGatewayAttachmentPropagation
    , transitGatewayAttachmentPropagation
    , tgapState
    , tgapTransitGatewayRouteTableId

    -- * TransitGatewayMulticastDeregisteredGroupMembers
    , TransitGatewayMulticastDeregisteredGroupMembers
    , transitGatewayMulticastDeregisteredGroupMembers
    , tgmdgmDeregisteredNetworkInterfaceIds
    , tgmdgmTransitGatewayMulticastDomainId
    , tgmdgmGroupIPAddress

    -- * TransitGatewayMulticastDeregisteredGroupSources
    , TransitGatewayMulticastDeregisteredGroupSources
    , transitGatewayMulticastDeregisteredGroupSources
    , tgmdgsDeregisteredNetworkInterfaceIds
    , tgmdgsTransitGatewayMulticastDomainId
    , tgmdgsGroupIPAddress

    -- * TransitGatewayMulticastDomain
    , TransitGatewayMulticastDomain
    , transitGatewayMulticastDomain
    , tgmdCreationTime
    , tgmdState
    , tgmdTransitGatewayMulticastDomainId
    , tgmdTransitGatewayId
    , tgmdTags

    -- * TransitGatewayMulticastDomainAssociation
    , TransitGatewayMulticastDomainAssociation
    , transitGatewayMulticastDomainAssociation
    , tgmdaResourceId
    , tgmdaResourceType
    , tgmdaSubnet
    , tgmdaTransitGatewayAttachmentId

    -- * TransitGatewayMulticastDomainAssociations
    , TransitGatewayMulticastDomainAssociations
    , transitGatewayMulticastDomainAssociations
    , tResourceId
    , tResourceType
    , tSubnets
    , tTransitGatewayMulticastDomainId
    , tTransitGatewayAttachmentId

    -- * TransitGatewayMulticastGroup
    , TransitGatewayMulticastGroup
    , transitGatewayMulticastGroup
    , tgmgResourceId
    , tgmgResourceType
    , tgmgSourceType
    , tgmgMemberType
    , tgmgNetworkInterfaceId
    , tgmgSubnetId
    , tgmgGroupMember
    , tgmgGroupSource
    , tgmgGroupIPAddress
    , tgmgTransitGatewayAttachmentId

    -- * TransitGatewayMulticastRegisteredGroupMembers
    , TransitGatewayMulticastRegisteredGroupMembers
    , transitGatewayMulticastRegisteredGroupMembers
    , tgmrgmTransitGatewayMulticastDomainId
    , tgmrgmRegisteredNetworkInterfaceIds
    , tgmrgmGroupIPAddress

    -- * TransitGatewayMulticastRegisteredGroupSources
    , TransitGatewayMulticastRegisteredGroupSources
    , transitGatewayMulticastRegisteredGroupSources
    , tgmrgsTransitGatewayMulticastDomainId
    , tgmrgsRegisteredNetworkInterfaceIds
    , tgmrgsGroupIPAddress

    -- * TransitGatewayOptions
    , TransitGatewayOptions
    , transitGatewayOptions
    , tgoVPNEcmpSupport
    , tgoAutoAcceptSharedAttachments
    , tgoPropagationDefaultRouteTableId
    , tgoDefaultRouteTableAssociation
    , tgoAssociationDefaultRouteTableId
    , tgoAmazonSideASN
    , tgoDefaultRouteTablePropagation
    , tgoMulticastSupport
    , tgoDNSSupport

    -- * TransitGatewayPeeringAttachment
    , TransitGatewayPeeringAttachment
    , transitGatewayPeeringAttachment
    , tgpaCreationTime
    , tgpaRequesterTgwInfo
    , tgpaStatus
    , tgpaState
    , tgpaAccepterTgwInfo
    , tgpaTransitGatewayAttachmentId
    , tgpaTags

    -- * TransitGatewayPropagation
    , TransitGatewayPropagation
    , transitGatewayPropagation
    , tgpState
    , tgpResourceId
    , tgpResourceType
    , tgpTransitGatewayRouteTableId
    , tgpTransitGatewayAttachmentId

    -- * TransitGatewayRequestOptions
    , TransitGatewayRequestOptions
    , transitGatewayRequestOptions
    , tgroVPNEcmpSupport
    , tgroAutoAcceptSharedAttachments
    , tgroDefaultRouteTableAssociation
    , tgroAmazonSideASN
    , tgroDefaultRouteTablePropagation
    , tgroMulticastSupport
    , tgroDNSSupport

    -- * TransitGatewayRoute
    , TransitGatewayRoute
    , transitGatewayRoute
    , tgrState
    , tgrTransitGatewayAttachments
    , tgrType
    , tgrDestinationCidrBlock

    -- * TransitGatewayRouteAttachment
    , TransitGatewayRouteAttachment
    , transitGatewayRouteAttachment
    , tgraResourceId
    , tgraResourceType
    , tgraTransitGatewayAttachmentId

    -- * TransitGatewayRouteTable
    , TransitGatewayRouteTable
    , transitGatewayRouteTable
    , tgrtCreationTime
    , tgrtState
    , tgrtDefaultPropagationRouteTable
    , tgrtTransitGatewayRouteTableId
    , tgrtTransitGatewayId
    , tgrtDefaultAssociationRouteTable
    , tgrtTags

    -- * TransitGatewayRouteTableAssociation
    , TransitGatewayRouteTableAssociation
    , transitGatewayRouteTableAssociation
    , tgrtaState
    , tgrtaResourceId
    , tgrtaResourceType
    , tgrtaTransitGatewayAttachmentId

    -- * TransitGatewayRouteTablePropagation
    , TransitGatewayRouteTablePropagation
    , transitGatewayRouteTablePropagation
    , tgrtpState
    , tgrtpResourceId
    , tgrtpResourceType
    , tgrtpTransitGatewayAttachmentId

    -- * TransitGatewayVPCAttachment
    , TransitGatewayVPCAttachment
    , transitGatewayVPCAttachment
    , tgvaCreationTime
    , tgvaState
    , tgvaSubnetIds
    , tgvaVPCId
    , tgvaTransitGatewayId
    , tgvaOptions
    , tgvaTransitGatewayAttachmentId
    , tgvaTags
    , tgvaVPCOwnerId

    -- * TransitGatewayVPCAttachmentOptions
    , TransitGatewayVPCAttachmentOptions
    , transitGatewayVPCAttachmentOptions
    , tgvaoIPv6Support
    , tgvaoDNSSupport

    -- * TunnelOption
    , TunnelOption
    , tunnelOption
    , toOutsideIPAddress
    , toReplayWindowSize
    , toRekeyFuzzPercentage
    , toPhase1LifetimeSeconds
    , toIkeVersions
    , toPhase2IntegrityAlgorithms
    , toPhase2LifetimeSeconds
    , toPhase1EncryptionAlgorithms
    , toPhase1DHGroupNumbers
    , toPhase1IntegrityAlgorithms
    , toRekeyMarginTimeSeconds
    , toDpdTimeoutSeconds
    , toTunnelInsideCidr
    , toPhase2EncryptionAlgorithms
    , toPhase2DHGroupNumbers
    , toPreSharedKey

    -- * UnsuccessfulInstanceCreditSpecificationItem
    , UnsuccessfulInstanceCreditSpecificationItem
    , unsuccessfulInstanceCreditSpecificationItem
    , uicsiInstanceId
    , uicsiError

    -- * UnsuccessfulInstanceCreditSpecificationItemError
    , UnsuccessfulInstanceCreditSpecificationItemError
    , unsuccessfulInstanceCreditSpecificationItemError
    , uicsieCode
    , uicsieMessage

    -- * UnsuccessfulItem
    , UnsuccessfulItem
    , unsuccessfulItem
    , uiResourceId
    , uiError

    -- * UnsuccessfulItemError
    , UnsuccessfulItemError
    , unsuccessfulItemError
    , uieCode
    , uieMessage

    -- * UserBucket
    , UserBucket
    , userBucket
    , ubS3Key
    , ubS3Bucket

    -- * UserBucketDetails
    , UserBucketDetails
    , userBucketDetails
    , ubdS3Key
    , ubdS3Bucket

    -- * UserData
    , UserData
    , userData
    , udData

    -- * UserIdGroupPair
    , UserIdGroupPair
    , userIdGroupPair
    , uigpVPCPeeringConnectionId
    , uigpVPCId
    , uigpUserId
    , uigpGroupId
    , uigpGroupName
    , uigpDescription
    , uigpPeeringStatus

    -- * VCPUInfo
    , VCPUInfo
    , vCPUInfo
    , vciValidThreadsPerCore
    , vciDefaultThreadsPerCore
    , vciDefaultVCPUs
    , vciDefaultCores
    , vciValidCores

    -- * VGWTelemetry
    , VGWTelemetry
    , vgwTelemetry
    , vtStatus
    , vtOutsideIPAddress
    , vtCertificateARN
    , vtLastStatusChange
    , vtAcceptedRouteCount
    , vtStatusMessage

    -- * VPC
    , VPC
    , vpc
    , vpcIPv6CidrBlockAssociationSet
    , vpcCidrBlockAssociationSet
    , vpcOwnerId
    , vpcTags
    , vpcIsDefault
    , vpcCidrBlock
    , vpcDHCPOptionsId
    , vpcInstanceTenancy
    , vpcState
    , vpcVPCId

    -- * VPCAttachment
    , VPCAttachment
    , vpcAttachment
    , vaState
    , vaVPCId

    -- * VPCCidrBlockAssociation
    , VPCCidrBlockAssociation
    , vpcCidrBlockAssociation
    , vcbaAssociationId
    , vcbaCidrBlockState
    , vcbaCidrBlock

    -- * VPCCidrBlockState
    , VPCCidrBlockState
    , vpcCidrBlockState
    , vcbsState
    , vcbsStatusMessage

    -- * VPCClassicLink
    , VPCClassicLink
    , vpcClassicLink
    , vclVPCId
    , vclTags
    , vclClassicLinkEnabled

    -- * VPCEndpoint
    , VPCEndpoint
    , vpcEndpoint
    , veGroups
    , veState
    , vePolicyDocument
    , veSubnetIds
    , veNetworkInterfaceIds
    , veVPCId
    , veRequesterManaged
    , veDNSEntries
    , veVPCEndpointType
    , vePrivateDNSEnabled
    , veOwnerId
    , veCreationTimestamp
    , veServiceName
    , veLastError
    , veVPCEndpointId
    , veTags
    , veRouteTableIds

    -- * VPCEndpointConnection
    , VPCEndpointConnection
    , vpcEndpointConnection
    , vecVPCEndpointOwner
    , vecNetworkLoadBalancerARNs
    , vecDNSEntries
    , vecVPCEndpointState
    , vecCreationTimestamp
    , vecServiceId
    , vecVPCEndpointId

    -- * VPCIPv6CidrBlockAssociation
    , VPCIPv6CidrBlockAssociation
    , vpcIPv6CidrBlockAssociation
    , vicbaAssociationId
    , vicbaIPv6CidrBlock
    , vicbaNetworkBorderGroup
    , vicbaIPv6CidrBlockState
    , vicbaIPv6Pool

    -- * VPCPeeringConnection
    , VPCPeeringConnection
    , vpcPeeringConnection
    , vpcpcVPCPeeringConnectionId
    , vpcpcStatus
    , vpcpcAccepterVPCInfo
    , vpcpcRequesterVPCInfo
    , vpcpcExpirationTime
    , vpcpcTags

    -- * VPCPeeringConnectionOptionsDescription
    , VPCPeeringConnectionOptionsDescription
    , vpcPeeringConnectionOptionsDescription
    , vpcodAllowEgressFromLocalVPCToRemoteClassicLink
    , vpcodAllowEgressFromLocalClassicLinkToRemoteVPC
    , vpcodAllowDNSResolutionFromRemoteVPC

    -- * VPCPeeringConnectionStateReason
    , VPCPeeringConnectionStateReason
    , vpcPeeringConnectionStateReason
    , vpcsrCode
    , vpcsrMessage

    -- * VPCPeeringConnectionVPCInfo
    , VPCPeeringConnectionVPCInfo
    , vpcPeeringConnectionVPCInfo
    , vpcviCidrBlockSet
    , vpcviVPCId
    , vpcviOwnerId
    , vpcviPeeringOptions
    , vpcviCidrBlock
    , vpcviRegion
    , vpcviIPv6CidrBlockSet

    -- * VPNConnection
    , VPNConnection
    , vpnConnection
    , vcCustomerGatewayConfiguration
    , vcRoutes
    , vcVPNGatewayId
    , vcCategory
    , vcTransitGatewayId
    , vcOptions
    , vcTags
    , vcVGWTelemetry
    , vcVPNConnectionId
    , vcCustomerGatewayId
    , vcState
    , vcType

    -- * VPNConnectionOptions
    , VPNConnectionOptions
    , vpnConnectionOptions
    , vcoEnableAcceleration
    , vcoTunnelOptions
    , vcoStaticRoutesOnly

    -- * VPNConnectionOptionsSpecification
    , VPNConnectionOptionsSpecification
    , vpnConnectionOptionsSpecification
    , vcosEnableAcceleration
    , vcosTunnelOptions
    , vcosStaticRoutesOnly

    -- * VPNGateway
    , VPNGateway
    , vpnGateway
    , vgState
    , vgVPCAttachments
    , vgVPNGatewayId
    , vgAmazonSideASN
    , vgAvailabilityZone
    , vgType
    , vgTags

    -- * VPNStaticRoute
    , VPNStaticRoute
    , vpnStaticRoute
    , vsrState
    , vsrSource
    , vsrDestinationCidrBlock

    -- * VPNTunnelOptionsSpecification
    , VPNTunnelOptionsSpecification
    , vpnTunnelOptionsSpecification
    , vtosReplayWindowSize
    , vtosRekeyFuzzPercentage
    , vtosPhase1LifetimeSeconds
    , vtosIKEVersions
    , vtosPhase2IntegrityAlgorithms
    , vtosPhase2LifetimeSeconds
    , vtosPhase1EncryptionAlgorithms
    , vtosPhase1DHGroupNumbers
    , vtosPhase1IntegrityAlgorithms
    , vtosRekeyMarginTimeSeconds
    , vtosDPDTimeoutSeconds
    , vtosTunnelInsideCidr
    , vtosPhase2EncryptionAlgorithms
    , vtosPhase2DHGroupNumbers
    , vtosPreSharedKey

    -- * Volume
    , Volume
    , volume
    , vFastRestored
    , vMultiAttachEnabled
    , vAttachments
    , vIOPS
    , vOutpostARN
    , vKMSKeyId
    , vTags
    , vAvailabilityZone
    , vCreateTime
    , vEncrypted
    , vSize
    , vSnapshotId
    , vState
    , vVolumeId
    , vVolumeType

    -- * VolumeAttachment
    , VolumeAttachment
    , volumeAttachment
    , volInstanceId
    , volDeleteOnTermination
    , volState
    , volDevice
    , volVolumeId
    , volAttachTime

    -- * VolumeDetail
    , VolumeDetail
    , volumeDetail
    , vdSize

    -- * VolumeModification
    , VolumeModification
    , volumeModification
    , vmProgress
    , vmStartTime
    , vmModificationState
    , vmTargetVolumeType
    , vmOriginalVolumeType
    , vmTargetSize
    , vmTargetIOPS
    , vmOriginalSize
    , vmOriginalIOPS
    , vmStatusMessage
    , vmEndTime
    , vmVolumeId

    -- * VolumeStatusAction
    , VolumeStatusAction
    , volumeStatusAction
    , vsaEventType
    , vsaCode
    , vsaDescription
    , vsaEventId

    -- * VolumeStatusAttachmentStatus
    , VolumeStatusAttachmentStatus
    , volumeStatusAttachmentStatus
    , vsasInstanceId
    , vsasIOPerformance

    -- * VolumeStatusDetails
    , VolumeStatusDetails
    , volumeStatusDetails
    , vsdStatus
    , vsdName

    -- * VolumeStatusEvent
    , VolumeStatusEvent
    , volumeStatusEvent
    , vseInstanceId
    , vseNotBefore
    , vseEventType
    , vseDescription
    , vseNotAfter
    , vseEventId

    -- * VolumeStatusInfo
    , VolumeStatusInfo
    , volumeStatusInfo
    , vsiStatus
    , vsiDetails

    -- * VolumeStatusItem
    , VolumeStatusItem
    , volumeStatusItem
    , vsiVolumeStatus
    , vsiActions
    , vsiOutpostARN
    , vsiEvents
    , vsiAvailabilityZone
    , vsiVolumeId
    , vsiAttachmentStatuses
    ) where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Product
import Network.AWS.EC2.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-11-15@ of the Amazon Elastic Compute Cloud SDK configuration.
ec2 :: Service
ec2 =
  Service
    { _svcAbbrev = "EC2"
    , _svcSigner = v4
    , _svcPrefix = "ec2"
    , _svcVersion = "2016-11-15"
    , _svcEndpoint = defaultEndpoint ec2
    , _svcTimeout = Just 70
    , _svcCheck = statusSuccess
    , _svcError = parseXMLError "EC2"
    , _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2
        , _retryGrowth = 2
        , _retryAttempts = 5
        , _retryCheck = check
        }
    check e
      | has (hasCode "ThrottledException" . hasStatus 400) e =
        Just "throttled_exception"
      | has (hasCode "RequestLimitExceeded" . hasStatus 503) e =
        Just "request_limit_exceeded"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has (hasCode "ThrottlingException" . hasStatus 400) e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e = Just "throttling"
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has (hasCode "RequestThrottledException" . hasStatus 400) e =
        Just "request_throttled_exception"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 500) e = Just "general_server_error"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | otherwise = Nothing

