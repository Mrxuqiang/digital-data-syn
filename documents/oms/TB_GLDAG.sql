/*
================================================================================
��ṹ����:TB_GLDAG
��ṹ����:�ⲿ���㷢������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAG;
drop index AK_TB_GLDAG;
drop table TB_GLDAG;
create table TB_GLDAG  (
   GLDAG_ID             INTEGER                         not null,   /*�ⲿ���㷢����ID                */
   GLDAG001             INTEGER                         not null,   /*����                    */
   GLDAG002             DATE                            not null,   /*�ⲿ��������                      */
   GLDAG003             INTEGER                         not null,   /*�ⲿ������ID                      */
   GLDAG004             VARCHAR2(1)                     not null,   /*�ⲿ����״̬                    */
   GLDAG005             INTEGER                         not null,   /*�ⲿ�������ID                    */
   GLDAG006             INTEGER    ,                                /*ȷ����ID                  */
   GLDAG007             DATE,                                       /*ȷ��ʱ��                      */
   GLDAG008             INTEGER                        not null,    /*�Է�ƾ֤ID                     */
   GLDAG009             INTEGER,                                     /*����ƾ֤ID                     */
   GLDAG010             INTEGER,                                    /*����ƾ֤��ʱID                   */
   GLDAG011             INTEGER                        not null,    /*���������˲�ID             */
   GLDAG012             INTEGER                        not null,    /*������˾ID             */
   GLDAG013             INTEGER                        not null,    /*�Է������˲�ID             */
   GLDAG014             INTEGER                        not null,    /*�Է���˾ID                   */
   GLDAG015             INTEGER                        not null,    /*����ƾ֤���ID             */
   GLDAG016             NUMBER(16,2),                                /*�����跽�ϼ�             */
   GLDAG017             NUMBER(16,2) ,                               /*���������ϼ�             */
   GLDAG018             DATE                           not null,    /*����ƾ֤�Ƶ�����                       */
   GLDAG019             VARCHAR2(255),                              /*��ע                       */
   GLDAG020             VARCHAR2(30),                               /*����                       */
   GLDAG021             NUMBER(4),                                  /*������                */
   GLDAG022             NUMBER(2),                                  /*����ڼ�                 */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����               */                               
   CREATE_DATE          DATE,                                       /*��������                   */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                   */
   MODI_DATE            DATE,                                       /*�޸�����                   */
   FLAG                 NUMBER(1),                                  /*����״̬                   */
   constraint PK_TB_GLDAG primary key (GLDAG_ID)
);
create unique index AK_TB_GLDAG on TB_GLDAG (GLDAG001,GLDAG0020);
create sequence SEQ_TB_GLDAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAG to public;
grant index  on TB_GLDAG to public;
grant update on TB_GLDAG to public; 
grant delete on TB_GLDAG to public;  
grant insert on TB_GLDAG to public; 
grant select on SEQ_TB_GLDAG to public;   