{{/*
Return the name of the chart
*/}}
{{- define "dugeun.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{/*
Create a fullname using the release name and the chart name
*/}}
{{- define "dugeun.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride -}}
{{- else }}
{{- printf "%s-%s" .Release.Name (include "dugeun.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
