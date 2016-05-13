/*
================================================================================
��ṹ����:TB_PMTOD
��ṹ����:���Ʒ���ŵ���Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTOD;
drop index AK_TB_PMTOD;
drop table TB_PMTOD;
create table TB_PMTOD  (
   PMTOD_ID             INTEGER                         not null,  /*���Ʒ���ŵ���ƷID          */
   PMTOD001             INTEGER                         not null,  /*���Ʒ���ŵ�ID              */
   PMTOD002             VARCHAR2(2)                     not null,  /*��������                      */
   PMTOD003             INTEGER                         not null,  /*������ID                      */
   PMTOD004             VARCHAR2(5),                               /*�������                      */
   PMTOD005             INTEGER                         not null,  /*��Ʒ����ID                    */
   PMTOD006             INTEGER                         not null,  /*��λID                        */
   PMTOD007             NUMBER(18,3),                              /*����������                    */
   PMTOD008             NUMBER(18,3),                              /*ʵ��������                    */
   PMTOD009             NUMBER(12,2),                              /*����                          */
   PMTOD010             NUMBER(12,2),                              /*���                          */
   PMTOD011             NUMBER(18,3),                              /*��������                      */
   PMTOD012             VARCHAR2(255),                             /*��ע                          */
   PMTOD013             VARCHAR2(16),                              /*��������                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTOD primary key (PMTOD_ID)
);
create unique index AK_TB_PMTOD on TB_PMTOD (PMTOD001,PMTOD002,PMTOD003,PMTOD005);
create sequence SEQ_TB_PMTOD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTOD to public;
grant index  on TB_PMTOD to public;
grant update on TB_PMTOD to public; 
grant delete on TB_PMTOD to public;  
grant insert on TB_PMTOD to public; 
grant select on SEQ_TB_PMTOD to public;   