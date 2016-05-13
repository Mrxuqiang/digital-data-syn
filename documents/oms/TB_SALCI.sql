/*
================================================================================
��ṹ����:TB_SALCI
��ṹ����:�˿�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALCI;
drop index AK_TB_SALCI;
drop table TB_SALCI;
create table TB_SALCI  (
   SALCI_ID             INTEGER                         not null,  /*�˿����ID     */
   SALCI001             INTEGER                         not null,  /*�˿ID         */
   SALCI002             INTEGER                         not null,  /*���㷽ʽID       */
   SALCI003             NUMBER(12,2)                    not null,  /*ʵ�˿���       */
   SALCI004             NUMBER(12,2),                              /*������           */
   SALCI005             NUMBER(12,2),                              /*���˽��         */
   SALCI006             VARCHAR2(30),                              /*���п���         */
   SALCI007             INTEGER,                                   /*��������ID       */
   SALCI008             NUMBER(12,2),                              /*��������(%)      */
   SALCI009             VARCHAR2(30),                              /*֧Ʊ��           */
   SALCI010             NUMBER(12,2),                              /*Ʊ����         */
   SALCI011             DATE,                                      /*��Ʊ����         */
   SALCI012             VARCHAR2(60),                              /*��Ʊ��λ         */
   SALCI013             INTEGER,                                   /*����ȯ�ִ���ID   */
   SALCI014             INTEGER,                                   /*����ȯ������ID */
   SALCI015             NUMBER(30),                                /*��ʼȯ��         */
   SALCI016             NUMBER(30),                                /*����ȯ��         */
   SALCI017             NUMBER(8),                                 /*ȯ����           */
   SALCI018             NUMBER(30),                                /*����ȯ����       */
   SALCI019             INTEGER,                                   /*����ȯ������ID   */
   SALCI020             NUMBER(30),                                /*���ѿ���         */
   SALCI021             NUMBER(12,2),                              /*�˿��ѷ����     */
   SALCI022             NUMBER(12,2),                              /*�˿�δ�����     */
   SALCI023             NUMBER(12,2),                              /*�������ѷ����   */
   SALCI024             NUMBER(12,2),                              /*������δ�����   */
   SALCI025             VARCHAR2(1),                               /*�ո�����1.�� 2.��*/
   SALCI026             INTEGER,                                   /*Ԥ�տID       */
   SALCI027             INTEGER,                                   /*Ԥ�տ��ϸID   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALCI primary key (SALCI_ID)
);
create index AK_TB_SALCI on TB_SALCI (SALCI_ID,SALCI001,SALCI002);
create sequence SEQ_TB_SALCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCI to public;
grant index  on TB_SALCI to public;
grant update on TB_SALCI to public; 
grant delete on TB_SALCI to public;  
grant insert on TB_SALCI to public; 
grant select on SEQ_TB_SALCI to public;   