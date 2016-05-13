/*
================================================================================
��ṹ����:TB_SYSZA
��ṹ����:��������SQL����
��ṹĿ��:�洢���������ģ������ı�����������Ϣ
================================================================================
*/

drop sequence SEQ_TB_SYSZA;
drop index AK_TB_SYSZA;
drop table TB_SYSZA;
create table TB_SYSZA  (
   SYSZA_ID              INTEGER                              not null,             /*����������ID              */
   SYSZA001              VARCHAR2(30)                         not null,             /*��ṹ����                */
   SYSZA002              VARCHAR2(60)                         not null,             /*��ṹ����                */
   SYSZA003              VARCHAR2(60),             																	/*��ṹĿ��                */
   SYSZA004              VARCHAR2(4000),             																/*SQL�ļ�����               */
   SYSZA005              VARCHAR2(4000),             																/*SQL�ļ�����               */
   SYSZA006              VARCHAR2(4000),             																/*SQL�ļ�����               */
   SYSZA007              VARCHAR2(4000),             																/*SQL�ļ�����               */
   constraint PK_TB_SYSZA primary key (SYSZA_ID)
);
create unique index AK_TB_SYSZA on TB_SYSZA (SYSZA001);
create sequence SEQ_TB_SYSZA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSZA to public;
grant index  on TB_SYSZA to public;
grant update on TB_SYSZA to public;
grant delete on TB_SYSZA to public;
grant insert on TB_SYSZA to public;
grant select on SEQ_TB_SYSZA to public;