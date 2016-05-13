/*
================================================================================
��ṹ����:TB_BILKD
��ṹ����:�ս���־������¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILKD;
drop index AK_TB_BILKD;
drop table TB_BILKD;
create table TB_BILKD  (
   BILKD_ID             INTEGER                         not null,  /*�ս���־������¼ID             */
   BILKD001             DATE                            not null,  /*��������                   */
   BILKD002             INTEGER,                                   /*Ӫ����֯ID                 */
   BILKD003             INTEGER,                                   /*������ID                   */
   BILKD004             DATE                            not null,  /*��������                   */
   BILKD005             VARCHAR2(1)                     not null,  /*��������1���ս� 2���ս�    */
   BILKD005             VARCHAR2(15)                    not null,  /*IP��ַ                     */
   BILKD006             VARCHAR2(255)                           ,  /*��ע                       */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����               */                               
   CREATE_DATE          DATE,                                      /*��������                   */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                   */
   MODI_DATE            DATE,                                      /*�޸�����                   */
   FLAG                 NUMBER(1),                                 /*����״̬                   */
   constraint PK_TB_BILKD primary key (BILKD_ID)
);
create sequence SEQ_TB_BILKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILKD to public;
grant index  on TB_BILKD to public;
grant update on TB_BILKD to public; 
grant delete on TB_BILKD to public;  
grant insert on TB_BILKD to public; 
grant select on SEQ_TB_BILKD to public;   