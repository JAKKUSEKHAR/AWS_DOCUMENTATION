<mxfile host="Electron" agent="Mozilla/5.0" version="28.2.5">
  <diagram name="Housie-Infra-API-Gateway" id="Housie-Infra-API-Gateway">
    <mxGraphModel dx="1038" dy="1862" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1700" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        
        <mxCell id="G-1" value="Amazon Route 53" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;strokeColor=#ffffff;fillColor=#232F3E;dashed=0;verticalLabelPosition=middle;verticalAlign=bottom;align=center;html=1;whiteSpace=wrap;fontSize=10;fontStyle=1;spacing=3;shape=mxgraph.aws4.productIcon;prIcon=mxgraph.aws4.route_53;" vertex="1" parent="1">
          <mxGeometry x="749.79" y="-1150" width="90" height="120" as="geometry" />
        </mxCell>
        <mxCell id="G-2" value="Amazon CloudFront" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;strokeColor=#ffffff;fillColor=#232F3E;dashed=0;verticalLabelPosition=middle;verticalAlign=bottom;align=center;html=1;whiteSpace=wrap;fontSize=10;fontStyle=1;spacing=3;shape=mxgraph.aws4.productIcon;prIcon=mxgraph.aws4.cloudfront;" vertex="1" parent="1">
          <mxGeometry x="754.79" y="-980" width="80" height="110" as="geometry" />
        </mxCell>
        <mxCell id="G-3" value="AWS WAF" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;strokeColor=#ffffff;fillColor=#232F3E;dashed=0;verticalLabelPosition=middle;verticalAlign=bottom;align=center;html=1;whiteSpace=wrap;fontSize=10;fontStyle=1;spacing=3;shape=mxgraph.aws4.productIcon;prIcon=mxgraph.aws4.waf;" vertex="1" parent="1">
          <mxGeometry x="754.79" y="-830" width="80" height="110" as="geometry" />
        </mxCell>
        <mxCell id="G-4" value="Amazon API Gateway" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;strokeColor=#ffffff;fillColor=#232F3E;dashed=0;verticalLabelPosition=middle;verticalAlign=bottom;align=center;html=1;whiteSpace=wrap;fontSize=10;fontStyle=1;spacing=3;shape=mxgraph.aws4.productIcon;prIcon=mxgraph.aws4.api_gateway;" vertex="1" parent="1">
          <mxGeometry x="754.79" y="-680" width="80" height="110" as="geometry" />
        </mxCell>

        <mxCell id="C-1" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="G-1" target="G-2"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="C-2" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="G-2" target="G-3"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="C-3" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="G-3" target="G-4"><mxGeometry relative="1" as="geometry" /></mxCell>
        <mxCell id="C-4" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="G-4" target="A0UBn-Q5a-7ie35_UjwS-47"><mxGeometry relative="1" as="geometry" /></mxCell>

        <mxCell id="A0UBn-Q5a-7ie35_UjwS-1" value="AWS Cloud - us-east-1" style="shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_aws_cloud;strokeColor=#232F3E;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#232F3E;dashed=0;" vertex="1" parent="1">
          <mxGeometry x="160" y="-490" width="690" height="1400" as="geometry" />
        </mxCell>
        <mxCell id="A0UBn-Q5a-7ie35_UjwS-47" value="Internet&#xa;gateway" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;strokeColor=#232F3E;fillColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.internet_gateway;" vertex="1" parent="A0UBn-Q5a-7ie35_UjwS-1">
          <mxGeometry x="310" y="50" width="60" height="60" as="geometry" />
        </mxCell>
        
        </root>
    </mxGraphModel>
  </diagram>
</mxfile>