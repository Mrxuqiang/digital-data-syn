================================================================================
��ṹ����:TB_OTSAK
��ṹ����:���˵���ӡ��־��
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_OTSAK;
drop index AK_TB_OTSAK;
drop table TB_OTSAK;
create table TB_OTSAK  (
   OTSAK_ID             INTEGER                         not null,  /*��ӡ��־ID                    */
   OTSAK001             INTEGER                         not null,  /*��ͬID                        */
   OTSAK002             DATE                            not null,  /*��ӡ����(yyyy-mm-dd:hh:mm:ss) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_OTSAK primary key (OTSAK_ID)
);
--create unique index AK_TB_OTSAK on TB_OTSAK (OTSAK_ID);
create sequence SEQ_TB_OTSAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAK to public;
grant index  on TB_OTSAK to public;
grant update on TB_OTSAK to public; 
grant delete on TB_OTSAK to public;  
grant insert on TB_OTSAK to public; 
grant select on SEQ_TB_OTSAK to public;   