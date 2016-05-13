/*
================================================================================
��ṹ����:TB_BILAD
��ṹ����:�����⸶���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILAD;
drop index AK_TB_BILAD;
drop table TB_BILAD;
create table TB_BILAD  (
   BILAD_ID             INTEGER                         not null,  /*�����⸶��ID         */
   BILAD001             INTEGER                         not null,  /*�����⸶��ID         */
   BILAD002             INTEGER,                                   /*���۵���ϸID         */
   BILAD003             INTEGER,                                   /*��ƷID               */
   BILAD004             VARCHAR2(80),                              /*���                 */
   BILAD005             VARCHAR2(40),                              /*�ͺ�                 */
   BILAD006             NUMBER(18,3),                              /*����                 */
   BILAD007             NUMBER(22,2),                              /*���                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER,                                 /*����״̬             */
   constraint PK_TB_BILAD primary key (BILAD_ID)
);
create unique index AK_TB_BILAD on TB_BILAD (BILAD001,BILAD002,FLAG);
create sequence SEQ_TB_BILAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAD to public;
grant index  on TB_BILAD to public;
grant update on TB_BILAD to public; 
grant delete on TB_BILAD to public;  
grant insert on TB_BILAD to public; 
grant select on SEQ_TB_BILAD to public;   