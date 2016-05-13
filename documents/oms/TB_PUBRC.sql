/*
================================================================================
��ṹ����:TB_PUBRC
��ṹ����:�ڲ�����ƾ֤����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRC;
drop index AK_TB_PUBRC;
drop table TB_PUBRC;
create table TB_PUBRC  (
   PUBRC_ID             INTEGER                         not null,  /*�ڲ�����ƾ֤�ڱ�ID             */
   PUBRC001             INTEGER                         not null,  /*�ڲ��������ID         */
   PUBRC002             INTEGER                         not null,  /*��������˲�ID                   */
   PUBRC003             INTEGER ,                                  /*��Դƾ֤���ID                   */
   PUBRC004             VARCHAR2(30),                              /*Ԥ���ֶ�               */
   PUBRC005             INTEGER ,                                  /*Ŀ��ƾ֤���ID                   */
   PUBRC006             VARCHAR2(30),                              /*Ԥ���ֶ�               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_PUBRC primary key (PUBRC_ID)
);
create sequence SEQ_TB_PUBRC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRC to public;
grant index  on TB_PUBRC to public;
grant update on TB_PUBRC to public; 
grant delete on TB_PUBRC to public;  
grant insert on TB_PUBRC to public; 
grant select on SEQ_TB_PUBRC to public;   