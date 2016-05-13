/*
================================================================================
��ṹ����:TB_SYSAC
��ṹ����:�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAC;
drop index AK_TB_SYSAC;
drop table TB_SYSAC;
create table TB_SYSAC  (
   SYSAC_ID             INTEGER                         not null,  /*����ID           */
   SYSAC001             VARCHAR2(16)                    not null,  /*�������         */
   SYSAC002             INTEGER                         not null,  /*ģ��ID           */
   SYSAC003             VARCHAR2(1)                     not null,  /*��������         */
   SYSAC004             DATE                            not null,  /*�������         */
   SYSAC005             VARCHAR2(1)                     not null,  /*���ô���         */
   SYSAC006             NUMBER(5),                                 /*����ʱ��(��)     */
   SYSAC007             VARCHAR2(1),                               /*���ô���ʽ     */
   SYSAC008             VARCHAR2(1),                               /*�Ƿ��Զ�����     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAC primary key (SYSAC_ID)
);
create unique index AK_TB_SYSAC on TB_SYSAC (SYSAC001);
create sequence SEQ_TB_SYSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAC to public;
grant index  on TB_SYSAC to public;
grant update on TB_SYSAC to public; 
grant delete on TB_SYSAC to public;  
grant insert on TB_SYSAC to public; 
grant select on SEQ_TB_SYSAC to public;   