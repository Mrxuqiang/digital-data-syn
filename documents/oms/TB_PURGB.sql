/*
================================================================================
��ṹ����:TB_PURGB
��ṹ����:�ɹ��˻����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURGB;
drop index AK_TB_PURGB;
drop table TB_PURGB;
create table TB_PURGB  (
   PURGB_ID             INTEGER                            not null,              /*�˻���ϸID      */
   PURGB001             INTEGER                            not null,              /*�˻���ID        */
   PURGB002             INTEGER,                                                  /*��ⵥ��ID      */
   PURGB003             INTEGER,                                                  /*��ⵥ���ID    */
   PURGB004             INTEGER                            not null,              /*��Ʒ����        */
   PURGB005             INTEGER,                                                  /*ά��1       	 */ 
   PURGB006             INTEGER,                                                  /*ά��2           */
   PURGB007             INTEGER,                                                  /*ά��3           */
   PURGB008             INTEGER,                                                  /*ά��4           */
   PURGB009             INTEGER,                                                  /*ά��5           */
   PURGB010             INTEGER                            not null,              /*�ֿ�            */
   PURGB011             INTEGER                            not null,              /*��λ            */
   PURGB012             VARCHAR2(30)                       not null,              /*������          */
   PURGB013             VARCHAR2(30),                                             /*������          */
   PURGB014             VARCHAR2(30),                                             /*��������        */
   PURGB015             INTEGER                            not null,              /*�˻���λ        */
   PURGB016             NUMBER(12,2)                       not null,              /*��λ������      */
   PURGB017             NUMBER(18,3)                       not null,              /*�˿���          */
   PURGB018             NUMBER(12,2)                       not null,              /*˰ǰ����        */
   PURGB019             NUMBER(12,2)                       not null,              /*��˰����        */
   PURGB020             INTEGER                            not null,              /*˰��            */
   PURGB021             NUMBER(12,2)                       not null,              /*˰��            */
   PURGB022             NUMBER(12,2)                       not null,              /*˰ǰ���        */
   PURGB023             NUMBER(12,2)                       not null,              /*��˰���        */
   PURGB024             NUMBER(18,3),                                             /*����            */
   PURGB025             VARCHAR2(1)                        not null,              /*��Ʒ��������    */
   PURGB028             INTEGER,                                                  /*����˵��        */ -- mark by 20100427
   PURGB029             INTEGER,                                                  /*Ӧ���ݹ�����    */ --mark by 20100427
   PURGB030             VARCHAR2(255),                                            /*��ע            */
   PURGB031             INTEGER                            not null,              /*�ɹ�����        */ --mark by 20100427
   PURGB032             INTEGER                            not null,              /*�ɹ������      */ --mark by 20100427
   PURGB033             VARCHAR2(1)                        not null,              /*����״̬*/ --ADD BY HANSF  1 �ѷ�����2 ���ջ� --mark by 20100427
   PURGB034             VARCHAR2(1),                                              /*�Ƿ���װƷ     */
   PURGB035             VARCHAR2(1),                                              /*�Ƿ�ɷ�       */
   PURGB036             INTEGER,                                                  /*����ƷID           */
   PURGB037             INTEGER,                                                  /*����           */
   PURGB038             VARCHAR2(30),                                             /*���׼���Ӧ�����           */
   CREATE_USER          VARCHAR2(12),                                             /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                                             /*������Ա����              */                               
   CREATE_DATE          DATE,                                                     /*��������                  */
   MODIFIER             VARCHAR2(12),                                             /*�޸���Ա                  */
   MODI_DATE            DATE,                                                     /*�޸�����                  */
   FLAG                 NUMBER(1),                                                /*����״̬                  */
   constraint PK_TB_PURGB primary key (PURGB_ID)
);
create index AK_TB_PURGB on TB_PURGB (PURGB_ID,PURGB002,PURGB005);
create sequence SEQ_TB_PURGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURGB to public;
grant index  on TB_PURGB to public;
grant update on TB_PURGB to public; 
grant delete on TB_PURGB to public;  
grant insert on TB_PURGB to public; 
grant select on SEQ_TB_PURGB to public;   