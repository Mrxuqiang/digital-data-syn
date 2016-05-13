
/*
================================================================================
��ṹ����:TB_PUBHY
��ṹ����:�Ӽ���Ʒά����Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHY;
drop index AK_TB_PUBHY;
drop table TB_PUBHY;
create table TB_PUBHY  (
   PUBHY_ID             INTEGER                         not null,  /*�Ӽ�ά����ϢID                                   */
   PUBHY001             INTEGER                         not null,  /*�׼�ά����ϢID                                       */
   PUBHY002             INTEGER,                         not null, /*�Ӽ���ƷID                                   */
   PUBHY003             INTEGER,                                   /*�Ӽ�ά��1ID                                     */
   PUBHY004             INTEGER                         ,        /*�Ӽ�ά��2ID                                     */
   PUBHY005             INTEGER,				 /*�Ӽ�ά��3ID                                     */
   PUBHY006             INTEGER,				 /*�Ӽ�ά��4ID                                       */
   PUBHY007             INTEGER,                                   /*�Ӽ�ά��5ID                                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                                       */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                                   */                               
   CREATE_DATE          DATE,                                      /*��������                                       */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                                       */
   MODI_DATE            DATE,                                      /*�޸�����                                       */
   FLAG                 NUMBER(1),                                 /*����״̬                                       */
   constraint PK_TB_PUBHY primary key (PUBHY_ID)
);
create index AK_TB_PUBHY on TB_PUBHY (PUBHY001,PUBHY002,PUBHY003,PUBHY004,PUBHY005,PUBHY006,PUBHY007);
create sequence SEQ_TB_PUBHY minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHY to public;
grant index  on TB_PUBHY to public;
grant update on TB_PUBHY to public; 
grant delete on TB_PUBHY to public;  
grant insert on TB_PUBHY to public; 
grant select on SEQ_TB_PUBHY to public;   