<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:hl7="urn:hl7-org:v3"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0"><!--Gegenereerd met meta-hl72html.xsl-->
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:effectiveTime/hl7:low">
      <div class="concept-item">
         <div class="concept-item-name">Datum start zorgverantwoordelijkheid</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:effectiveTime/hl7:high">
      <div class="concept-item">
         <div class="concept-item-name">Datum einde zorgverantwoordelijkheid</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='Rpp' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Eindverantwoordelijk in welke perinatale periode?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='RiskStat' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Conclusie risicostatus na intake</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:act[hl7:code[(@code='OBS' and @codeSystem='2.16.840.1.113883.5.4') or (@code='423215004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:act/hl7:author[hl7:assignedEntity]/hl7:assignedEntity/hl7:representedOrganization/hl7:id">
      <div class="concept-item">
         <div class="concept-item-name">Overname van zorginstelling (id)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:act[hl7:code[(@code='OBS' and @codeSystem='2.16.840.1.113883.5.4') or (@code='423215004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:act/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='RefInReas' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Reden van overname (lijst PRN)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:act[hl7:code[(@code='308292007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:act">
      <div class="concept-item">
         <div class="concept-item-name">Is er sprake van 'overdracht aan'?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:act[hl7:code[(@code='308292007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:act/hl7:effectiveTime">
      <div class="concept-item">
         <div class="concept-item-name">Datum van overdracht</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:act[hl7:code[(@code='308292007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:act/hl7:performer/hl7:assignedEntity/hl7:code">
      <div class="concept-item">
         <div class="concept-item-name">Overdracht aan zorginstelling (specialisme)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:act[hl7:code[(@code='308292007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:act/hl7:performer/hl7:assignedEntity/hl7:representedOrganization/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']">
      <div class="concept-item">
         <div class="concept-item-name">Overdracht aan zorginstelling (id)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:act[hl7:code[(@code='308292007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:act/hl7:outboundRelationship[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN210603' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Perinatale periode van overdracht</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:act[hl7:code[(@code='308292007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:act/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:code[(@code='RefOutReas' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Reden 'overdracht aan' (lijst PRN)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:verifier/hl7:assignedPerson/hl7:representedOrganization/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']">
      <div class="concept-item">
         <div class="concept-item-name">Zorginstelling LVR-ID</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:subject/hl7:patient/hl7:id[@root='2.16.840.1.113883.2.4.6.3']">
      <div class="concept-item">
         <div class="concept-item-name">Burgerservicenummer</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:subject/hl7:patient/hl7:id[not(@nullFlavor) and not(@root='2.16.840.1.113883.2.4.6.3')]">
      <div class="concept-item">
         <div class="concept-item-name">Lokale persoonsidentificatie</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:subject/hl7:patient/hl7:patientPerson/hl7:birthTime">
      <div class="concept-item">
         <div class="concept-item-name">Geboortedatum</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:subject/hl7:patient/hl7:addr/hl7:postalCode">
      <div class="concept-item">
         <div class="concept-item-name">Postcode</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:subject/hl7:patient/hl7:patientPerson/hl7:ethnicGroupCode">
      <div class="concept-item">
         <div class="concept-item-name">Etniciteit</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='OnderBehandeling' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Onder behandeling (geweest)?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='85828009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Auto-immuun aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='85828009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Auto-immuun aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='49601007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Cardiovasculaire aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='49601007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Cardiovasculaire aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='42030000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Urogenitale aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='42030000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Urogenitale aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='363346000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Oncologische aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='363346000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Oncologische aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='14304000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Schildklier aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='14304000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Schildklier aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='73211009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Diabetes mellitus?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='118940003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Neurologische aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='118940003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Neurologische aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Infectieziekte?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Infectieziekte</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='53619000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">MDL aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='53619000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">MDL aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='271737000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Anemie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='271737000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Anemie</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='50043002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Longaandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='50043002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Longaandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Gynaecologische aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Gynaecologische aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='928000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Orthopedische afwijking?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='928000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Orthopedische afwijking</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='116859006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Bloedtransfusie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='82545002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Transfusiereactie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='387713003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Operatie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='387713003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Type operatie</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='64779008' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Stollingsprobleem?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='64779008' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Type stollingsprobleem</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='74732009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Psychiatrie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='OverigeAandoeningenAnamnese' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Overige aandoening?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='417662000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code/@code='312850006'][hl7:organizer[hl7:code[(@code='312850006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='OverigeAandoeningenAnamnese' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:text">
      <div class="concept-item">
         <div class="concept-item-name">Overige aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Lengte (gemeten)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='95041000119101' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Vrouwelijke genitale verminking?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='95041000119101' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Type vrouwelijke genitale verminking</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='EindeZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Wijze einde zwangerschap</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Definitieve à terme datum</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Gynaecologische aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Bloedverlies?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Cervixinsufficiëntie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Infectie</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Hyperemesis gravidarum?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Hypertensieve aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Zwangerschapscholestase?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Diabetes gravidarum met insuline?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Afwijkende groei foetus</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Dreigende partus immaturus?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Dreigende partus prematurus?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Abruptio placentae?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='312457003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Irregulaire antistoffen?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='AfterBirthMethod' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Geboorte placenta</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='364332008' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Hoeveelheid bloedverlies</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:procedure/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring'][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:subject/hl7:personalRelationship/hl7:relationshipHolder/hl7:birthTime">
      <div class="concept-item">
         <div class="concept-item-name">Geboortedatum</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:procedure/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring'][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Type partus</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:procedure/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring'][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='301334000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Percentiel van het geboortegewicht</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:procedure/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring'][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Apgarscore na 5 min.</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:procedure/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring'][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Congenitale afwijkingen?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='248983002'][hl7:organizer[hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component/hl7:procedure/hl7:outboundRelationship[hl7:procedure/hl7:code/@code='Baring'][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Chromosomale afwijkingen?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Graviditeit</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='Parturit' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Pariteit (vóór deze zwangerschap)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <!--Geen Xpath voor Definitieve à terme datum-->
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='Voornemen']]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='PRN4209' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Voorgenomen plaats baring tijdens zwangerschap (type locatie)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:effectiveTime">
      <div class="concept-item">
         <div class="concept-item-name">Datum controle</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='445872007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Zwangerschapsduur</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='364618000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Leven voelen</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='Rookgedrag' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Rookgedrag</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='228309001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Alcoholgebruik</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='Drugsgebruik' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Drugsgebruik?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code='18114009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Gewicht (gemeten)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:effectiveTime">
      <div class="concept-item">
         <div class="concept-item-name">Datum</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='445872007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Zwangerschapsduur</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Gynaecologische aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Bloedverlies?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Partiële mola?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Cervixinsufficiëntie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Infectie</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Hyperemesis gravidarum?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Hypertensieve aandoening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Zwangerschapscholestase?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Diabetes gravidarum met insuline?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Afwijkende groei foetus</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Dreigende partus immaturus?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Dreigende partus prematurus?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Abruptio placentae?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='265631002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Intra-uteriene behandeling</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:subject/hl7:patient/hl7:patientPerson/hl7:deceasedInd">
      <div class="concept-item">
         <div class="concept-item-name">Maternale sterfte?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code='EindeZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Wijze einde zwangerschap</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:act[hl7:code[(@code='PartusNr' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act/hl7:id">
      <div class="concept-item">
         <div class="concept-item-name">Partusnummer</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='312974005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">PPROM?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='44223004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">PROM?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='386661006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Koorts?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='237320005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Niet vorderende ontsluiting?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='249166003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Niet vorderende uitdrijving?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='609415007:246090004=12867002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Verdenking foetale nood?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:organizer[hl7:code[(@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='109894007' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Vastzittende placenta?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='NBorn16' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Aantal geboren kinderen</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='PRN5102' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Risicostatus vóór baring</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='BeginDeliv' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Wijze waarop de baring begon</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='BeginDeliv' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='PRN520102' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:methodCode">
      <div class="concept-item">
         <div class="concept-item-name">Interventie begin baring</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='BeginDeliv' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='PRN520102' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='PRN520103' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Indicatie interventie begin baring</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='PRN520301' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation/hl7:effectiveTime">
      <div class="concept-item">
         <div class="concept-item-name">Tijdstip begin actieve ontsluiting</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Bijstimulatie toegediend?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='Medic3stage' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Medicatie nageboortetijdperk?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='Medic3stage' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:outboundRelationship/hl7:substanceAdministration/hl7:consumable/hl7:manufacturedProduct/hl7:manufacturedProduct/hl7:code">
      <div class="concept-item">
         <div class="concept-item-name">Soort medicatie nageboortetijdperk</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='AfterBirthMethod' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Geboorte placenta</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='364332008' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Hoeveelheid bloedverlies</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation[hl7:code[(@code='364297003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Conditie perineum postpartum</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:location/hl7:healthCareFacility/hl7:code">
      <div class="concept-item">
         <div class="concept-item-name">Werkelijke plaats baring (type locatie)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:location/hl7:healthCareFacility/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']">
      <div class="concept-item">
         <div class="concept-item-name">Ziekenhuisnummer (LVR-id)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:subject/hl7:personalRelationship/hl7:relationshipHolder/hl7:id[@root='2.16.840.1.113883.2.4.6.3']">
      <div class="concept-item">
         <div class="concept-item-name">BSN kind</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Geslacht (medische observatie)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:subject/hl7:personalRelationship/hl7:relationshipHolder/hl7:birthTime">
      <div class="concept-item">
         <div class="concept-item-name">Geboortedatum</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Rangnummer kind</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:subject/hl7:personalRelationship/hl7:relationshipHolder/hl7:deceasedInd">
      <div class="concept-item">
         <div class="concept-item-name">Perinatale sterfte?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Fase perinatale sterfte</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:subject/hl7:personalRelationship/hl7:relationshipHolder/hl7:deceasedTime">
      <div class="concept-item">
         <div class="concept-item-name">Datum/tijd vaststelling perinatale sterfte</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Tijdstip breken vliezen</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Kleur en consistentie vruchtwater</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Tijdstip actief meepersen</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure">
      <div class="concept-item">
         <div class="concept-item-name">Episiotomie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:targetSiteCode">
      <div class="concept-item">
         <div class="concept-item-name">Locatie episiotomie</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Ruggeprik gewenst, niet gekregen?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure">
      <div class="concept-item">
         <div class="concept-item-name">Pijnbestrijding?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:methodCode">
      <div class="concept-item">
         <div class="concept-item-name">Methode</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship/hl7:procedure/hl7:methodCode">
      <div class="concept-item">
         <div class="concept-item-name">Middel</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship/hl7:procedure/hl7:outboundRelationship/hl7:procedure/hl7:methodCode">
      <div class="concept-item">
         <div class="concept-item-name">Toediening</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Periode</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure">
      <div class="concept-item">
         <div class="concept-item-name">Sedatie?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Type partus</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Apgarscore na 5 min.</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Ligging bij geboorte</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:performer/hl7:responsibleParty/hl7:code">
      <div class="concept-item">
         <div class="concept-item-name">Rol aanpakker kind</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:responsibleParty/hl7:assignedEntity/hl7:code">
      <div class="concept-item">
         <div class="concept-item-name">Rol supervisor</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:methodCode">
      <div class="concept-item">
         <div class="concept-item-name">Vaginale kunstverlossing</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Succes vaginale kunstverlossing?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='SectioBeslisMoment' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Beslismoment sectio caesarea</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Indicatie sectio caesarea</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Overige interventies</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Geboortegewicht</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Congenitale afwijkingen?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Specificatie congenitale afwijking</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Chromosomale afwijkingen?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Specificatie chromosomale afwijking</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Problematiek kind?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Problematiek kind</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Kinderarts betrokken?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:performer/hl7:time">
      <div class="concept-item">
         <div class="concept-item-name">Datum betrokkenheid</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Reden betrokkenheid</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Type betrokkenheid</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:observation[hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation/hl7:performer/hl7:assignedEntity/hl7:representedOrganization/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']">
      <div class="concept-item">
         <div class="concept-item-name">Zorginstelling LVR-ID</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']][hl7:organizer[hl7:code[(@code='12131-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code[@code='PSIE' and @codeSystem='2.16.840.1.113883.2.4.4.13']][hl7:organizer[hl7:code[(@code='PSIE' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:organizer/hl7:component[hl7:observation/hl7:code[@code='312457003' and @codeSystem='2.16.840.1.113883.6.96']][hl7:observation[hl7:code[(@code='312457003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Irregulaire antistoffen?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']][hl7:organizer[hl7:code[(@code='12131-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer/hl7:component[hl7:organizer/hl7:code[@code='PSIE' and @codeSystem='2.16.840.1.113883.2.4.4.13']][hl7:organizer[hl7:code[(@code='PSIE' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:organizer/hl7:component[hl7:observation/hl7:code[@code='312457003' and @codeSystem='2.16.840.1.113883.6.96']][hl7:observation[hl7:code[(@code='312457003' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Welke irregulaire antistoffen vrouw aanwezig.</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='133906008']]][hl7:organizer[hl7:code[(@code='133906008' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation/hl7:code/@code='362973001'][hl7:observation[hl7:code[(@code='362973001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:effectiveTime">
      <div class="concept-item">
         <div class="concept-item-name">Datum</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='133906008']]][hl7:organizer[hl7:code[(@code='133906008' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation/hl7:code/@code='362973001'][hl7:observation[hl7:code[(@code='362973001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation">
      <div class="concept-item">
         <div class="concept-item-name">Pathologie vrouw?</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='133906008']]][hl7:organizer[hl7:code[(@code='133906008' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:observation/hl7:code/@code='362973001'][hl7:observation[hl7:code[(@code='362973001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation/hl7:value">
      <div class="concept-item">
         <div class="concept-item-name">Pathologie vrouw</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:supply[hl7:code[(@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:supply/hl7:effectiveTime">
      <div class="concept-item">
         <div class="concept-item-name">Voeding kind (datum)</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
   <xsl:template match="/hl7:REPC_IN004014NL/hl7:ControlActProcess/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess/hl7:subject2/hl7:CareProvisionEvent/hl7:pertinentInformation3[hl7:organizer[hl7:code[@code='236973005']]][hl7:organizer[hl7:code[(@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:organizer/hl7:component[hl7:procedure[hl7:code/@code='Baring']][hl7:procedure[hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure/hl7:outboundRelationship[hl7:supply[hl7:code[(@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:supply/hl7:product/hl7:product/hl7:playingMaterial/hl7:code">
      <div class="concept-item">
         <div class="concept-item-name">Substantie voeding kind</div>
         <div class="concept-item-cell">
            <xsl:call-template name="getValue"/>
         </div>
      </div>
   </xsl:template>
</xsl:stylesheet>
