cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  coronary-revascularisation-repair---primary:
    run: coronary-revascularisation-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  coronary-revascularisation-endarterectomy---primary:
    run: coronary-revascularisation-endarterectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-repair---primary/output
  diagnostic-coronary-revascularisation---primary:
    run: diagnostic-coronary-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-endarterectomy---primary/output
  coronary-revascularisation-translumin---primary:
    run: coronary-revascularisation-translumin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: diagnostic-coronary-revascularisation---primary/output
  coronary-revascularisation-replacement---primary:
    run: coronary-revascularisation-replacement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-translumin---primary/output
  coronary-revascularisation-specified---primary:
    run: coronary-revascularisation-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-replacement---primary/output
  coronary-revascularisation-insertion---primary:
    run: coronary-revascularisation-insertion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-specified---primary/output
  thoracic-coronary-revascularisation---primary:
    run: thoracic-coronary-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-insertion---primary/output
  coronary-revascularisation-autograft---primary:
    run: coronary-revascularisation-autograft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: thoracic-coronary-revascularisation---primary/output
  peroperative-coronary-revascularisation---primary:
    run: peroperative-coronary-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-autograft---primary/output
  coronary-revascularisation-conduit---primary:
    run: coronary-revascularisation-conduit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: peroperative-coronary-revascularisation---primary/output
  coronary-revascularisation-operation---primary:
    run: coronary-revascularisation-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-conduit---primary/output
  coronary-revascularisation-revision---primary:
    run: coronary-revascularisation-revision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-operation---primary/output
  coronary-revascularisation-allograft---primary:
    run: coronary-revascularisation-allograft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-revision---primary/output
  coronary-revascularisation-bypass---primary:
    run: coronary-revascularisation-bypass---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-allograft---primary/output
  coronary-revascularisation-method---primary:
    run: coronary-revascularisation-method---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-bypass---primary/output
  prosthetic-coronary-revascularisation---primary:
    run: prosthetic-coronary-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-method---primary/output
  coronary-revascularisation-triple---primary:
    run: coronary-revascularisation-triple---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: prosthetic-coronary-revascularisation---primary/output
  coronary-revascularisation-vpresence---primary:
    run: coronary-revascularisation-vpresence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-triple---primary/output
  coronary-revascularisation-angiop---primary:
    run: coronary-revascularisation-angiop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-vpresence---primary/output
  coronary-revascularisation-following---primary:
    run: coronary-revascularisation-following---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-angiop---primary/output
  coronary-revascularisation-mammary---primary:
    run: coronary-revascularisation-mammary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-following---primary/output
  coronary-revascularisation-patch---primary:
    run: coronary-revascularisation-patch---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-mammary---primary/output
  coronary-revascularisation-streptokinase---primary:
    run: coronary-revascularisation-streptokinase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-patch---primary/output
  coronary-revascularisation-three---primary:
    run: coronary-revascularisation-three---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-streptokinase---primary/output
  multiple-coronary-revascularisation---primary:
    run: multiple-coronary-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-three---primary/output
  sequential-coronary-revascularisation---primary:
    run: sequential-coronary-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: multiple-coronary-revascularisation---primary/output
  coronary-revascularisation-implantation---primary:
    run: coronary-revascularisation-implantation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: sequential-coronary-revascularisation---primary/output
  single-coronary-revascularisation---primary:
    run: single-coronary-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-implantation---primary/output
  double-coronary-revascularisation---primary:
    run: double-coronary-revascularisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: single-coronary-revascularisation---primary/output
  coronary-revascularisation-connection---primary:
    run: coronary-revascularisation-connection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: double-coronary-revascularisation---primary/output
  coronary-revascularisation-artery---primary:
    run: coronary-revascularisation-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-connection---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: coronary-revascularisation-artery---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
