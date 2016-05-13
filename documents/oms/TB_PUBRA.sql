/*
================================================================================
��ṹ����:TB_PUBRA
��ṹ����:�ڲ������˲�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRA;
drop index AK_TB_PUBRA;
drop table TB_PUBRA;
create table TB_PUBRA  (
   PUBRA_ID             INTEGER                         not null,  /*�ڲ������˲�����ID         */
   PUBRA001             INTEGER                         not null,  /*�������ID                 */
   PUBRA002             VARCHAR2(16)                    not null,  /*���                       */
   PUBRA003             INTEGER                         not null,  /*��Դ�����˲�ID             */
   PUBRA004             INTEGER                         not null,  /*Ŀ�������˲�ID             */
   PUBRA005             INTEGER,                                   /*�Ƶ���ID                   */
   PUBRA006             INTEGER,                                   /*������ID                   */
   PUBRA007             INTEGER,                                   /*����ID                     */
   PUBRA008             INTEGER,                                   /*�����ID                   */
   PUBRA009             VARCHAR2(1)                     not null,  /*����ƾ֤ʱ�Զ�����         */
   PUBRA010             VARCHAR2(30) ,                              /*��������*/
   PUBRA011             VARCHAR2(1)                     not null,  /*ʵʱ����                   */
   PUBRA012             VARCHAR2(1)                     not null,  /*��ƽ����ʽ                */
   PUBRA013             INTEGER,                                   /*�벹����Ŀ                */
   PUBRA014             VARCHAR2(1),                               /*Ԥ���ֶ�                */
   PUBRA015             VARCHAR2(1)                     not null,  /*�Ƶ�����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_PUBRA primary key (PUBRA_ID)
);
create unique index AK_TB_PUBRA on TB_PUBRA (PUBRA001,PUBRA002);
create sequence SEQ_TB_PUBRA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRA to public;
grant index  on TB_PUBRA to public;
grant update on TB_PUBRA to public; 
grant delete on TB_PUBRA to public;  
grant insert on TB_PUBRA to public; 
grant select on SEQ_TB_PUBRA to public;   