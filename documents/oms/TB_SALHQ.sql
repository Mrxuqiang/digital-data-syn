/*
================================================================================
��ṹ����:TB_SALHQ
��ṹ����:��ƹ������ۼƻ���
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALHQ;
drop index AK_TB_SALHQ;
drop table TB_SALHQ;
create table TB_SALHQ  (
   SALHQ_ID             INTEGER                          not null, /*��ƹ������ۼƻ�ID        */
   SALHQ001             INTEGER                          not null, /*����ID                    */
   SALHQ002             VARCHAR2(30)                     not null, /*����                      */
   SALHQ003             INTEGER                          not null, /*Ӫ����֯ID                */
   SALHQ004             DATE,                                      /*�ƻ��ڼ�                  */
   SALHQ005             INTEGER,                                   /*¼����ID                  */
   SALHQ006             DATE,                                      /*¼������                  */
   SALHQ007             INTEGER,                                   /*�����ID                  */
   SALHQ008             DATE,                                      /*�������                  */
   SALHQ009             VARCHAR2(1)                      not null, /*���״̬                  */ 
   SALHQ010             VARCHAR2(255),                             /*��ע                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                            
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER,                                    /*����״̬                  */
   constraint PK_TB_SALHQ primary key (SALHQ_ID)
);
create unique index AK_TB_SALHQ on TB_SALHQ (SALHQ002,SALHQ003,FLAG);
create sequence SEQ_TB_SALHQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHQ to public;
grant index  on TB_SALHQ to public;
grant update on TB_SALHQ to public; 
grant delete on TB_SALHQ to public;  
grant insert on TB_SALHQ to public; 
grant select on SEQ_TB_SALHQ to public;   