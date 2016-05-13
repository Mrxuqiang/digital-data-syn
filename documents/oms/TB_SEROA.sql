/*
================================================================================
��ṹ����:TB_SEROA
��ṹ����:�����ձ�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SEROA;
drop index AK_TB_SEROA;
drop table TB_SEROA;
create table TB_SEROA  (
   SEROA_ID             INTEGER                         not null,  /*�����ձ���ID           */
   SEROA001             INTEGER                         not null,  /*����id                 */
   SEROA002             VARCHAR2(30)                    not null,  /*����                 */
   SEROA003             DATE                            not null,  /*����                  */   
   SEROA004             INTEGER ,                                  /*¥��id             */
   SEROA005             INTEGER ,                                  /*�̳�id             */
   SEROA006             VARCHAR2(255) ,                            /*��ע               */
   SEROA007             NUMBER(12) ,                               /*Ӧ������           */
   SEROA008             NUMBER(12) ,                               /*ʵ������           */
   SEROA009             INTEGER ,                                  /*������id           */  
   SEROA010             INTEGER ,                                  /*¼����ID           */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_SEROA primary key (SEROA_ID)
);
create unique index AK_TB_SEROA on TB_SEROA (SEROA003,SEROA004,FLAG);
create sequence SEQ_TB_SEROA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROA to public;
grant index  on TB_SEROA to public;
grant update on TB_SEROA to public; 
grant delete on TB_SEROA to public;  
grant insert on TB_SEROA to public; 
grant select on SEQ_TB_SEROA to public;   